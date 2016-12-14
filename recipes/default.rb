#
# Cookbook Name:: postgres95
# Recipe:: default
#
# Copyright 2016, Terminus
#
# All rights reserved - Do Not Redistribute
#



#install postgres95 from psql repo
package 'postgres95' do
	action :install
	source 'https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-6-x86_64/pgdg-ami201503-95-9.5-3.noarch.rpm'
	provider Chef::Provider::Package::Rpm
end
