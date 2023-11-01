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
exec "$@"