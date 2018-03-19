# rbenv install with nonroot account
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo '# rbenv config' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# ruby-build setup
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# install ruby and set it global
sudo -H -u vagrant bash -i -c 'rbenv install 2.5.0'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
sudo -H -u vagrant bash -i -c 'rbenv global 2.5.0'

# install bundler
sudo -H -u vagrant bash -i -c 'gem install bundler --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'rbenv rehash'

# install rails
sudo -H -u vagrant bash -i -c 'gem install rails -v 5.1.5 --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'rbenv rehash'