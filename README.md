# LedgerLine

A senior-level Rails application for managing shared group expenses, balances, and settlements.

## Features

- Devise-authenticated user and group accounts
- Sidekiq + Redis for background jobs
- Transaction tracking + automated email notifications
- RSpec test suite with GitHub Actions CI
- Modular service object architecture

## Setup

```bash
bundle install
rails db:create db:migrate db:seed
rails server
```