# Lego Site

This is the repo for Lego Site. A site for storing info about the different lego sets I've built

## Install

cd into the root of the repository and run the following commands:

Install gem dependencies:
`
bundle install
`

Install active storage:
`
rails active_storage:install
`

Migrate database:
`
rails db:migrate
`

## Dependencies

This project requires ruby and ruby on rails to be installed (https://rubyonrails.org)

ImageMagick

## Run

Run the following command:

`
rails s
`

## Deployment

This is currently deployed on my raspberrypi on my local network. This was the guide used:
https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/standalone/oss/deploy_app_main.html

Steps:

- SSH to raspberry pi as lego_site user and pull the latest code in /var/www/lego_site/code
- Switch to root user and run `rvmsudo bundle exec passenger stop` to stop passenger
- Switch to lego_site user and run `bundle install --deployment --without development test` `bundle exec rake assets:precompile db:migrate RAILS_ENV=production`
- Switch to pi user and run 1 `rvmsudo bundle exec passenger start` to start the server back up
