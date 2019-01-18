# Tariff Rate Manager

This application provides a front-end administration framework for tariff rates. Some features include:
  * Easy modification of existing rates
  * Country-specific scopes for quick navigation and reporting
  * One-click JSON/CSV download of all or some of the data
  * Filter rates by searching strings, text fields, dates, and numeric values.
  * Sort on any field to customize the view

![Tariff Rate Manager](/public/screenshot.png)


## Running locally

Make sure you have [Ruby 2.5](https://www.ruby-lang.org), [Bundler](http://bundler.io) and [MySQL 8](https://dev.mysql.com/downloads/mysql/) installed.

```sh
git clone git@github.com:GovWizely/tariff_rate_manager.git # or clone your own fork
cd tariff_rate_manager
bundle
rails db:setup # may take ~15 minutes to seed data
rails server
```

Your app should now be running on [localhost:3000/admin](http://localhost:3000/admin).


## Download as CSV/JSON

Downloading observes whatever filters/scopes you happen to have in place. For instance, to just download Australia 
data as JSON, click on the `AU` scope at the top of the page and then click the `JSON` link at the bottom of the page.

Note that downloads are streamed and can take a few minutes. 


## Deployment instructions

As this is a MySQL-backed Rails application, there are many ways to deploy it. Deploying on AWS is straightforward 
with Beanstalk:
  1. Create a new Beanstalk application in the appropriate region.
  1. Pick an instance size for the application server. A `t2.medium` is a good starting point.
  1. Add a MySQL 8 RDS instance. A `db.t2.medium` is a good starting point. 
  1. Under `Configuration->Software`, set the `RAILS_MASTER_KEY` to the value in your `config/master.key` file.
  1. Package up the app with `zip tariff_rate_manager.zip -r * .[^.]*`.
  1. Click `Upload and Deploy` in the Beanstalk Console for your application.
 
