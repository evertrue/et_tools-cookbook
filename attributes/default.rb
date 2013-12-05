common_packages = %w[ iotop strace mc iptraf ]

case node['platform']
when "debian","ubuntu"
  default['tools']['packages'] = common_packages + %w[ dnsutils git-core links locate mailutils sysstat zip ntop iftop htop hping3 ]
when "redhat","centos","scientific","amazon"
  default['tools']['packages'] = common_packages + %w[ bc bind-utils elinks git mailx ]
end
