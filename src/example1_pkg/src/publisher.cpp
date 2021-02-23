#include "ros/ros.h"
#include "example1_pkg/zaman.h"
#include <example1_pkg/answer.h>
#include <example1_pkg/Dummy.h>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "publisher");

    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<example1_pkg::Dummy>("dummy_msg",100);

    ros::Rate loop_rate(2);

    example1_pkg::Dummy msg;

    int counter{0};

    while(ros::ok()){

        srand(time(0));

        size_t n = 5+ (rand() % 6);

        msg.n = n;       

        std::vector<int> arr;

        for(int i = 0; i < n; ++i){
            arr.push_back(rand()%11);
        }

        msg.arr = arr;

        pub.publish(msg);

        loop_rate.sleep();


    }
    return 0;
}
