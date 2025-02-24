#!/bin/bash

HOW_MANY=30

sudo rm -rf /start
sudo mkdir -p /start
sudo chmod 777 -R /start
ruby .devcontainer/maze.rb ${HOW_MANY} /start

dst=`find /start -name 29`
echo "Treasure #1" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 09`
echo "Treasure #2" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 02`
echo "Treasure #3" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 07`
echo "Treasure #4" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 10`
echo "Treasure #5" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

echo 'This is not one of the treasures you are looking for!!!' > treasure.txt
echo 'Start from the /start!' >> treasure.txt
