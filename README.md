# README

This README would normally document whatever steps are necessary to get the
application up and running.


  Create a Cloud9 instance using Ubuntu 18.04 - free micro tier.

  Clone the following git repository: https://github.com/NJMC/FinalApp7Aug.git

  cd into the newly downloaded folder in Cloud9.

  Run Bundle install in Cloud9 IDE

  An error will be returned relating to the PG Gem library installation. In order to fix this error run:

  sudo apt-get install postgresql postgresql-contrib libpq-dev

  Run ‘bundle install’ again and then ‘rake db:migrate’
  
  Administrator login: info@greenrep.com Password: 123456
