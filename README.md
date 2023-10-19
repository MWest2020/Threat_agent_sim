# Threat_agent_sim
simple threat agent sim for honeypot testing purposes

## Step 1:

make a bash script

```bash 
nano ~/threat_agent.sh
```
add basic testing script:

```bash
#!/bin/bash
#simulate  an ICMP ping scan to discover the victim
ping -c 3 192.168.131.230

# simulate a tcp connection with netcat
echo -e "GET / HTTP/1.1\r\nHost: 10.0.2.15\r\n\r\n" | nc 192.168.131.230 80

# Attempt to SSH into the machine (this will fail but should be logged by OpenCanary)
ssh -o StrictHostKeyChecking=no -o ConnectTimeout=5 192.168.131.230
```

make it an executable:
`bash
chmod +x threat_agent.sh
`
see if it works by running the script `./threat_agent.sh`

## Step 2:


