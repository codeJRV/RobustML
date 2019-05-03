OWN_IP=$(hostname -I | cut -d' ' -f 2)
git -C RobustML pull && echo -e "\e[32m ${OWN_IP} OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.1 git -C RobustML pull && echo -e "\e[32m192.168.0.1 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.2 git -C RobustML pull && echo -e "\e[32m192.168.0.2 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.3 git -C RobustML pull && echo -e "\e[32m192.168.0.3 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.4 git -C RobustML pull && echo -e "\e[32m192.168.0.4 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.5 git -C RobustML pull && echo -e "\e[32m192.168.0.5 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.6 git -C RobustML pull && echo -e "\e[32m192.168.0.6 OK\e[39m "
sshpass -p osboxes.org ssh osboxes@192.168.0.7 git -C RobustML pull && echo -e "\e[32m192.168.0.7 OK\e[39m "

echo 'We are all updated'




