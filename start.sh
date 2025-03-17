
#!/bin/sh
# Clone the latest Node-RED flows from GitHub
git clone https://github.com/Inszert/node-red-backups.git /tmp/flows

# Move flows to the correct Node-RED directory
mkdir -p /data
mv /tmp/flows/flows.json /data/flows.json
mv /tmp/flows/flows_cred.json /data/flows_cred.json

# Start Node-RED
npx node-red --userDir /data
