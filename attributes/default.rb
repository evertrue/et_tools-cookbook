common_packages = %w(iotop
                     iptraf
                     mc
                     strace
                     tree)

case node['platform_family']
when "debian"
  pkgs = common_packages +
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
  pkgs << 'jq' if node['platform_version'].to_f >= 14.04
when "redhat"
  pkgs = common_packages +
         %w(bc
            bind-utils
            elinks
            git
            mailx)
end

default['tools']['packages'] = pkgs
