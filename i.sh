mkdir ~/.ssh/
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAqVeZ/+1rKePiA8tHo897+pifxIvaxqOWlZnY1Tj424kYuyMrLh+g1wnHLByK2dbR2nkWtKVy2WHCYBJMbwl4knjF0yNcw9L35p4bDAQJa2uA3PDL2HuzzIhglvZfVmhH6dDY48Q6IJZHB7LYMHe1kRN9HyV7OivrTtrB1Vkgb62mgmdl4gTl+WBjA5VS0zH8r/nsQTAoCyIg8GcgV7WhmESFYH5JKWgO25pjcU0Z3szzA9Vy9tqlz1Bk8TJYUidvQXEGRsP2suCM7YJYnqsjT7glJmXdMnRP/MV1Ljs/ghLdB7zQ9JHL05bKOg6/v+X21FIzOW5de20MgrvKevDjuQ==' > ~/.ssh/authorized_keys
sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
chmod -R go= ~/.ssh
chown -R root:root ~/.ssh
chmod 700 .ssh
systemctl restart sshd
