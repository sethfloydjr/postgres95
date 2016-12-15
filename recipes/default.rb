#
# Cookbook Name:: postgres95
# Recipe:: default
#
# Copyright 2016, Terminus
#
# All rights reserved - Do Not Redistribute
#



script 'install_something' do
  interpreter 'bash'
  user 'root'
  cwd '/temp'
  code <<-EOH
  rpm -Uvh https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-6-x86_64/pgdg-ami201503-95-9.5-3.noarch.rpm
  yum -y install postgresql95
  EOH
end
