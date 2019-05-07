OWN_IP=$(hostname -I | cut -d' ' -f 2)
killall python
sshpass -p osboxes.org ssh osboxes@192.168.0.1 killall python  && echo -e "\e[32m192.168.0.1 CLEAN\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.2 killall python  && echo -e "\e[32m192.168.0.2 CLEAN\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.3 killall python  && echo -e "\e[32m192.168.0.3 CLEAN\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.4 killall python  && echo -e "\e[32m192.168.0.4 CLEAN\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.5 killall python  && echo -e "\e[32m192.168.0.5 CLEAN\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.6 killall python  && echo -e "\e[32m192.168.0.6 CLEAN\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.7 killall python  && echo -e "\e[32m192.168.0.7 CLEAN\e[39m "

echo 'All nodes Killed'






