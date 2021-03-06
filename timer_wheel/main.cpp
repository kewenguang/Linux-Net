#ifndef TIME_WHEEL_TIMER
#define TIME_WHEEL_TIMER

#include <netinet/in.h>
#include <stdio.h>
#include <iostream>
#include <string.h>
#include <zconf.h>

#define BUFFER_SIZE 64
class tw_timer;

struct client_data{
    char buf[BUFFER_SIZE];
    tw_timer *timer;
};

class tw_timer{
public:
    tw_timer(int rot,int ts):next(NULL),prev(NULL),rotation(rot),time_slot(ts){}
public:
    int rotation;
    int time_slot;
    void (*cb_func)(client_data*);
    client_data *user_data;
    tw_timer *next;
    tw_timer *prev;
};

class time_wheel{
public:
    time_wheel():cur_slot(0){
        for(int i = 0;i<N;i++){
            slots[i] = NULL;
        }
    }

    ~time_wheel(){
        for(int i = 0;i<N;i++){
            tw_timer *tmp = slots[i];
            while(tmp){
                slots[i] = tmp->next;
                delete tmp;
                tmp = slots[i];
            }
        }
    }

    tw_timer *add_timer(int timeout){
        if(timeout < 0){
            return NULL;
        }
        int ticks = 0;
        if(timeout < SI){
            ticks = 1;
        }
        else{
            ticks = timeout/SI;
        }
        int rotation = ticks/N;
        int ts = (cur_slot + (ticks%N))%N;
        tw_timer *timer = new tw_timer(rotation,ts);
        if(!slots[ts]){
            printf("add timer,rotation is %d,ts is %d,cur_slot is %d\n",rotation,ts,cur_slot);
            slots[ts] = timer;
            //printf("hahahahahahahahha\n");
            //slots[ts]->user_data->timer = NULL;
            //printf("wawawawawawaw\n");
        }
        else{
            printf("error!\n");
        }
        return timer;
    }

    void del_timer(tw_timer *timer){
        if(!timer){
            return;
        }
        int ts = timer->time_slot;

        if(timer == slots[ts]){
            slots[ts] = slots[ts]->next;
            if(slots[ts]){
                slots[ts]->prev = NULL;
            }
            delete timer;
        }
        else{
            timer->prev->next = timer->next;
            if(timer->next){
                timer->next->prev = timer->prev;
            }
            delete timer;
        }
    }

    void tick(){
        tw_timer *tmp = slots[cur_slot];
        printf("current slot is %d\n",cur_slot);
        while(tmp){
            printf("tick the timer once\n");
            if(tmp->rotation>0){
                tmp->rotation--;
                tmp = tmp->next;
            }
            else{
                //printf("function run \n");
                tmp->cb_func( tmp->user_data );
                //printf("function hava run\n");
                if(tmp == slots[cur_slot]){
                    printf("delete header in cur_slot\n");
                    slots[cur_slot] = tmp->next;
                    delete tmp;
                    if(slots[cur_slot]){
                        slots[cur_slot]->prev = NULL;
                    }
                    tmp = slots[cur_slot];
                }
                else{
                    tmp->prev->next = tmp->next;
                    if(tmp->next){
                        tmp->next->prev = tmp->next;
                    }
                    tw_timer *tmp2 = tmp->next;
                    delete tmp;
                    tmp = tmp2;
                }
            }
        }
        cur_slot = ++cur_slot % N;
    }

private:
    static const int N = 60;
    static const int SI = 1;
    tw_timer *slots[N];
    int cur_slot;

};

    void cb_func(client_data *data){
        printf("%s-------->client_data.buf",data->buf);
    }

int main() {

    time_wheel time_wheel1;
    for(int i = 0;i<10;++i){
        printf("add times:%d\n",i);
        tw_timer *tmp = time_wheel1.add_timer(i+1);
        //printf("have gotton tw_timer\n");
        client_data *user_data = new client_data();
        user_data->timer = tmp;
        memcpy(user_data->buf,"xxxxx",strlen("xxxxx") );
        //printf("run this 1\n");
        tmp->user_data = user_data;
        tmp->cb_func = cb_func;
    }

    for(int i = 0;i<60;i++){
        time_wheel1.tick();
        sleep(1);
    }
    //std::cout << "Hello, World!" << std::endl;
    return 0;
}

#endif