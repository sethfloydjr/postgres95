#
# Cookbook Name:: postgres95
# Recipe:: default
#
# Copyright 2016, Terminus
#
# All rights reserved - Do Not Redistribute
#



#install postgres95 from psql repo
execute 'postgres95_yum' do
	command 'rpm -Uvh https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-6-x86_64/pgdg-ami201503-95-9.5-3.noarch.rpm'
end

#install postgres95 from new repo
execute 'postgres95_install_rhel' do
	command 'yum -y install postgresql95-devel'
end
