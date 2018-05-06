echo -e "[master]
debian-master ansible_host=192.168.121.1 ansible_user=pankaj

[jenkins]"|sudo tee /etc/ansible/hosts
count=1;for i in `vagrant ssh-config|grep -E '\w+\.\w+\.\w+\.\w+'|awk '{ print $2}'`;do echo jenkins$count ansible_host=$i ansible_user=vagrant;count=$(( $count + 1 ));done |sudo tee -a /etc/ansible/hosts
