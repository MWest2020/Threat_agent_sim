#!/bin/bash

# Simulate an ICMP Ping scan to discover the VM
ping -c 3 <VM_IP_ADDRESS>

# Simulate a simple TCP connection using netcat
echo "Attempting tcp connection..." | nc <VM_IP_ADDRESS> 80
