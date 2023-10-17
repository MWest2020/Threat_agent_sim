#!/bin/bash

# Simulate an ICMP Ping scan to discover the VM
ping -c 3 $VICTIM_IP_ADDR

# Simulate a simple TCP connection using netcat
echo "Attempting tcp connection..." | nc $VICTIM_IP_ADDR 80
