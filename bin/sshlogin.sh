#!/bin/bash

source ../config.cfg

#bpmgt="ubuntu@ec2-18-130-163-183.eu-west-2.compute.amazonaws.com"
#ect='ecttrave@ecttravel.com\ -p18765'
#sja="strictl9@strictlyjaneausten.com"


#servers=($bpmgt $ect $sja) #grabs the values from the array
#echo ${servers[@]}

select server in "${SERVERS[@]}"
do echo "$server"
done

#for server in "${SERVERS[@]}"
#do
#    echo "$server"
#done
