#
# Cookbook Name:: postgres95
# Recipe:: default
#
# Copyright 2016, Terminus
#
# All rights reserved - Do Not Redistribute
#



if platform_family?('rhel')

	#install new repo
	execute 'postgres95_yum' do
		command 'rpm -Uvh https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-6-x86_64/pgdg-ami201503-95-9.5-3.noarch.rpm'
	end
	#install postgres95 from new repo
	execute 'postgres95_install_rhel' do
		command 'yum -y install postgres95'
	end

else
	platform_family?('debian')
		execute 'postgres95_apt'
			command 'sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list''
		end
		execute'postgres95_install_debian'
			command 'wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -'
		end

end