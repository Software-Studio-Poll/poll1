sudo apt-get update
sudo apt-get upgrade
echo "gem: --no-document" >> ~/.gemrc
gem install rails -v 6.0.0
source <(curl -sL https://cdn.learnenough.com/yarn_install)
yarn install --check-files
bundle install --without production
rails db:migrate
sudo ln -sf `which nano` /usr/bin
echo "The site still should show an error until you modify config/environments/development.rb"
echo "You should run"
echo 'git config --global user.name "Your Name"'
echo
echo "and"
echo
echo 'git config --global user.email your.email@example.com'