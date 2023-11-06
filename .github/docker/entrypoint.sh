ln -s /root/T6Server/Server/zone /root/T6Server/Server/Zombie/zone
ln -s /root/T6Server/Server/zone /root/T6Server/Server/Multiplayer/zone

# Download plutonium-updater
cd /root/T6Server/Plutonium/
wget https://github.com/mxve/plutonium-updater.rs/releases/latest/download/plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
tar xfv plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
rm plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
chmod +x plutonium-updater

# Make executable script
chmod +x T6Server.sh

mkdir -p /root/T6Server/Plutonium/storage/t6/scripts/zm
mkdir -p /root/T6Server/Plutonium/storage/t6/scripts/mp

# Download mapvote mod from https://github.com/DoktorSAS/PlutoniumT6Mapvote/tree/master
wget https://ams1.vultrobjects.com/t6server/mapvote_zm.gsc -O /root/T6Server/Plutonium/storage/t6/scripts/zm/mapvote.gsc
wget https://ams1.vultrobjects.com/t6server/mapvote_mp.gsc -O /root/T6Server/Plutonium/storage/t6/scripts/mp/mapvote.gsc

exec "$@"