

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

## Mods

Currently if you want to setup you own mods you will need to create your own Docker image, anyway i will be supporting some mods and if you want 
me to add a new one you can open a issue.

Currently i support the following mods:

### Mapvote

to set the mapvote mod for both multiplayer or zombies you need to switch the docker image and add some values in the config:
```yaml
image:
  tag: mod-mapvotes
server:
  key: "xxxxxxxxxxxxxxx"
  config: |
    party_maxplayers 4
    g_logSync 2
    g_log "logs\games_zm.log"
    sv_maprotation "exec zm_classic_tomb.cfg map zm_tomb"
    set mv_enable 1
    set mv_maps ""
    set mv_excludedmaps ""
    set mv_time 30
    set mv_credits 1
    set mv_socialname "Github"
    set mv_sentence  "Thanks for playing"
    set mv_votecolor "5"
    set mv_arrowcolor "white"
    set mv_selectcolor "lighgreen"
    set mv_backgroundcolor "grey"
    set mv_blur "3"
    set mv_gametype ""
    set mv_extramaps 0
```

All in the config that start with `mv` is from mapvote and needs to be added, you can find what does each of them, for Zombies [here](https://github.com/DoktorSAS/PlutoniumT6Mapvote/blob/master/zm/mapvote.cfg) for mp [here](https://github.com/DoktorSAS/PlutoniumT6Mapvote/blob/master/mp/mapvote.cfg). Is important that you keep that image tag if you wish to use this mod

WARNING: The values in the example is for Zombies, if you want to use it for Multiplayer you need to set the proper config in the values.

Mapvote mod: https://github.com/DoktorSAS/PlutoniumT6Mapvote/tree/master

## Source
• **T6Server for Debian:** https://github.com/Sterbweise/T6Server <br>
• **Plutonium:** https://plutonium.pw <br>
• **Plutonium-Updater by mxve:** https://github.com/mxve/plutonium-updater.rs <br>
