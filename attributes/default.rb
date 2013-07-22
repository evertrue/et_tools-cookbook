common_packages = %w[ iotop ntop strace mc hping3 htop iftop iptraf ]

case node['platform']
when "debian","ubuntu"
  default['tools']['packages'] = common_packages + %w[ dnsutils git-core links locate mailutils sysstat zip ]
when "redhat","centos","scientific","amazon"
  default['tools']['packages'] = common_packages + %w[ bc bind-utils elinks git pbzip2 mailx ]
end
