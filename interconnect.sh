OWN_IP=$(hostname -I | cut -d' ' -f 2)
sshpass -p osboxes.org ssh osboxes@192.168.0.1 ping $OWN_IP -c 3 -q && echo -e "\e[32m192.168.0.1 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.2 ping $OWN_IP -c 3 -q && echo -e "\e[32m192.168.0.2 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.3 ping $OWN_IP -c 3 -q && echo -e "\e[32m192.168.0.3 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.4 ping $OWN_IP -c 3 -q && echo -e "\e[32m192.168.0.4 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.5 ping $OWN_IP -c 3 -q && echo -e "\e[32m192.168.0.5 OK\e[39m "
echo $OWN_IP ' interconnected'




