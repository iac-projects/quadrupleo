user_name = "admin"
tenant_name = "admin"
password= "oracle"
auth_url = "http://10.238.117.210:5000/v3"
external_gateway = "14de1aeb-355a-4042-b3aa-69abf48187fb"
image = "centos72"
pool = "public"
domain_name = "default"
compute_keypair = "default"
network_name = "public" #vlan network
user_data = "sudo sed -i '$a proxy=http://opscloud:cloud0518@10.53.13.245:3128/' /etc/yum.conf"
