#!/bin/bash
cd /home/ubuntu/zian.ke
sudo ./gradlew build
sudo kill $(ps aux | grep 'java -jar' | awk '{print $2}')
sudo nohup java -jar "/home/ubuntu/zian.ke/build/libs/zian.ke-0.0.1-SNAPSHOT.jar" & 
