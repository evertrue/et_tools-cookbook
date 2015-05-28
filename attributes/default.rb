common_packages = %w(iotop
                     iptraf
                     mc
                     strace
                     tree)

case node['platform_family']
when "debian"
  default['tools']['packages'] = common_packages +
                                 %w(dnsutils
                                    git-core
                                    htop
                                    hping3
                                    iftop
                                    jq
                                    links
                                    locate
                                    mailutils
                                    nload
                                    ntop
                                    sysstat
                                    zip)
when "redhat"
  default['tools']['packages'] = common_packages +
                                 %w(bc
                                    bind-utils
                                    elinks
                                    git
                                    mailx)
end
