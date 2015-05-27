common_packages = %w(iotop
                     iptraf
                     mc
                     strace
                     tree)

case node['platform']
when "debian","ubuntu"
  default['tools']['packages'] = common_packages +
                                 %w(dnsutils
                                    git-core
                                    htop
                                    hping3
                                    iftop
                                    links
                                    locate
                                    mailutils
                                    nload
                                    ntop
                                    sysstat
                                    zip)
when "redhat","centos","scientific","amazon"
  default['tools']['packages'] = common_packages +
                                 %w(bc
                                    bind-utils
                                    elinks
                                    git
                                    mailx)
end
