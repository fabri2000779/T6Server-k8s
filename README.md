

![alt text](https://img.shields.io/badge/Plutonium-T6-blue)

<img src="https://imgur.com/bBrx8Hf.png" alt="drawing" width="350"/>

# T6Server
T6Server in Kubernetes

📌 [Installation for Debian Linux](https://github.com/Sterbweise/T6Server)

## Installation
1. Add Helm repo : 
   ```shell
   helm repo add t6server https://fabri2000779.github.io/T6Server-k8s/
   ```
2. to install it:
   ```shell
   helm upgrade --install t6server t6server/t6server
   ```

## Configuration
In the `values.yaml` you can find all the configurations but there are some of them that are needed
to make your server works:
server.key
server.type
server.name
server.config

This are some of the config that i suggest to look.

NOTE: if you dont set a correct key the server will fail to start.

This repo is a fork of [T6server](https://github.com/Sterbweise/T6Server) that make this possible

## Source
• **T6Server for Debian:** https://github.com/Sterbweise/T6Server <br>
• **Plutonium:** https://plutonium.pw <br>
• **IW4MAdmin by RaidMax:** https://github.com/RaidMax/IW4M-Admin <br>
• **Plutonium-Updater by mxve:** https://github.com/mxve/plutonium-updater.rs <br>
