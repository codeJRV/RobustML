OWN_IP=$(hostname -I | cut -d' ' -f 2)
bash interconnect.sh
sshpass -p osboxes.org ssh osboxes@192.168.0.1 bash interconnect.sh && echo -e "\e[32m192.168.0.1 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.2 bash interconnect.sh && echo -e "\e[32m192.168.0.2 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.3 bash interconnect.sh && echo -e "\e[32m192.168.0.3 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.4 bash interconnect.sh && echo -e "\e[32m192.168.0.4 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.5 bash interconnect.sh && echo -e "\e[32m192.168.0.5 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.6 bash interconnect.sh && echo -e "\e[32m192.168.0.6 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.7 bash interconnect.sh && echo -e "\e[32m192.168.0.7 OK\e[39m "

echo $OWN_IP 'We are all interconnected'




