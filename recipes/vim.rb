cookbook_file "/etc/vim/vimrc.local" do
  source "vimrc.local"
  owner "root"
  group "root"
  mode 00644
end
