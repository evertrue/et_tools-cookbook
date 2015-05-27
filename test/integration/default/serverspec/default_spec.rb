require 'spec_helper'

describe 'et_tools::default' do
  pkgs = case os[:family]
         when 'debian','ubuntu'
           %w(iotop
              iptraf
              mc
              strace
              tree
              dnsutils
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
         when 'redhat','centos'
           %w(iotop
              iptraf
              mc
              strace
              tree
              bc
              bind-utils
              elinks
              git
              mailx)
         else
           fail "#{os[:family]} is not supported"
         end
  pkgs.each do |pkg|
    describe package(pkg) do
      it { is_expected.to be_installed }
    end
  end
end
