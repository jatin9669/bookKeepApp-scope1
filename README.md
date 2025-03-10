# Password Manager API

This is a Rails-based API application for managing passwords, built with Grape and Swagger for API documentation. It uses PostgreSQL as the database and authentication with Devise.

## Prerequisites

- Ruby 3.x
- Rails 8.0.1
- PostgreSQL 9.3 or higher
- Node.js and Yarn (for managing JavaScript dependencies)

## Setup

### Clone the Repository

```bash
git clone https://github.com/jatin9669/BKA-scope1
cd BKA-scope1
```

### Install Dependencies

Install the required gems:

```bash
bundle install
```

Install JavaScript dependencies:

```bash
yarn install
```

### Database Configuration

Ensure PostgreSQL is installed and running. Configure your database settings in `config/database.yml`. Use environment variables or Rails credentials for passwords.
#### Example Database Configuration

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: book_keeping_app_development
  username: postgres
  password: <%= Rails.application.credentials.dig(:database, :db_password) %>
  host: localhost
  port: 5432

test:
  <<: *default
  database: book_keeping_app_test
  username: postgres
  password: <%= Rails.application.credentials.dig(:database, :db_password %>
  host: localhost
  port: 5432

production:
  <<: *default
  database: book_keeping_app_production
  username: book_keeping_app
  password: <%= ENV["BOOK_KEEPING_APP_DATABASE_PASSWORD"] %>
```

### Setup Rails Credentials

Store sensitive information like database passwords and secret keys in Rails credentials. To edit credentials, run:
1. First remove the existing credential file
```bash
rm config/credentials.yml.enc
```
2. Then start editing the credential file (this is will create a new encrypted credential file using the app master key if there is no credential file)
```bash
EDITOR="code --wait" bin/rails credentials:edit
```

Add the following entries:

```yaml
database:
  db_password: your_database_password
```

### Database Setup

Create and migrate the database:

```bash
bin/rails db:create
bin/rails db:migrate
```

### Running the Server

Start the Rails server:

```bash
bin/rails server (or)
bin/dev
```

Access the application at `http://localhost:3000`.


### Running Tests

Run the test suite using RSpec:

```bash
bundle exec rspec
```
