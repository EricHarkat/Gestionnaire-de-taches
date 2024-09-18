
# README

Just a project management application to try out Ruby on Rails

* ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux-gnu]
* Rails 7.1.4

```bash
# Install Rubis
brew install rbenv
rbenv install 3.0.0
rbenv global 3.0.0

# Check installation
ruby -v

# Install Rails
gem install rails

# Check installation
rails -v

# Rails use SQLite3 by default

# Install SQLite3
brew install sqlite

# Check installation
sqlite3 --version


# Deployment instructions

```bash
#installing Ruby dependencies
bundle install

#Database config
rails db:create
rails db:migrate

# Commande for run
rails server```


