# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Install Ruby version - 2.3.7

**Provisioning**

```bash
cd ./real_estate
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

**Run daemons**

```bash
cd ./real_estate
bundle exec sidekiq
```