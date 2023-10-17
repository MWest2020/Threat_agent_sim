# Threat_agent_sim
simple threat agent sim for honeypot testing purposes

## Step 1:

make a bash script

`bash 
nano ~/threat_agent.sh
`
add basic testing script:

```bash
#!/bin/bash

# Simulate an ICMP Ping scan to discover the victim
ping -c 3 <Victim_IP_ADDRESS>

# Simulate a simple TCP connection using netcat
echo "Attempting connection..." | nc <Victim_IP_ADDRESS> 80
```

make it an executable:
`bash
chmod +x threat_agent.sh
`
see if it works by running the script `./threat_agent.sh`

