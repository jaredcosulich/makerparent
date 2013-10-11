# makerparent

## Getting started developing

  * Install and launch [the Postgres app](http://postgresapp.com)
  * Create a postgres role: run `psql`, then run `create role makerparent login createdb;`
  * Create the databases: `rake db:create:all`
  * Run migrations: `rake db:migrate`
  * Run tests: `rake`
  * Start the server: `foreman start`
  * Visit the site: `http://localhost:5000/`


##
