#!/bin/bash

(echo "4" > /sys/class/gpio/export) > /dev/null 2> /dev/null
echo "out" > /sys/class/gpio/gpio4/direction
echo "0" > /sys/class/gpio/gpio4/value
sleep 3
echo "1" > /sys/class/gpio/gpio4/value