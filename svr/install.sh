#!/bin/bash
sh -c "apt install wireguard && umask 077 && wg genkey > /etc/wireguard/priv && wg pubkey < /etc/wireguard/priv > /etc/wireguard/pub"
wget https://raw.githubusercontent.com/p27182/wg/main/svr/wg0.conf -O /etc/wireguard/wg0.conf
echo "keys generated and saved in /etc/wireguard/ with wg0.conf - edit wg0.conf to add peer(s) IP and pub keys."
echo "Remember to delete /etc/wireguard/priv and /etc/wireguard/pub"
echo "Issue systemctl enable and start cmds after wg0.conf and peers configured."
echo "sudo systemctl enable wg-quick@wg0 && sudo systemctl start wg-quick@wg0"
