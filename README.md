# ssh_addkeys

If you want to automate adding SSH keys to different nodes, you will come across problems using sshpass because of the strict host key checking prompt (The authenticity of host. . .Are you sure you want to continue connecting (yes/no)?)

You can bypass this issue by using the -o flag in sshpass and specifying StrictHostKeyChecking=no, but if you're doing this in the context of a while read loop to add keys to multiple nodes then you will run into issues. This is because adding the -n flag along with the -o flag will not work (and you must add -n for the while read loop to function properly in this scenario. If you do not, your script will only add an ssh key to the first node in your loop.

This script creates an additional file descriptor and helps bypass the issue (another way to bypass the issue would be to disable strict host key checking in the ssh config, but the goal here is maximum portability across systems).
