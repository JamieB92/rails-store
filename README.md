# rails-store

A small online store built with Ruby on Rails while working through the [Rails Getting Started guide](https://guides.rubyonrails.org/getting_started.html). Products belong to categories and can have reviews.

## What it does so far

- Lists products and shows a single product (name, category, price and stock)
- Creates products through a form (the form is still being extended to cover every field)
- Validates data: required names, non-negative prices, whole-number stock, and review ratings from 0 to 5
- Starter data for categories, products and reviews in `db/seeds.rb`

## Data model

| Model | Columns | Relationships |
|---|---|---|
| `Category` | `name` | has many products |
| `Product` | `name`, `price`, `stock` | belongs to a category, has many reviews |
| `Review` | `name`, `comment`, `stars` (0 to 5) | belongs to a product |

## Tech stack

- Ruby 4.0.10
- Rails 8.1
- SQLite
- Puma, Propshaft, Importmap, Turbo and Stimulus
- Minitest for tests, RuboCop for linting, Brakeman and bundler-audit for security checks

## Getting started

You need Ruby 4.0.10. The repo includes `.ruby-version` and `.tool-versions`, so version managers like [asdf](https://asdf-vm.com) pick it up (`asdf install`).

```bash
git clone https://github.com/JamieB92/rails-store.git
cd rails-store
bin/setup --skip-server   # installs gems and prepares the database
bin/rails db:seed         # adds the starter data (safe to run more than once)
bin/rails server          # then open http://localhost:3000/products
```

The database is a local SQLite file in `storage/`, which is not committed. Each machine builds its own with `bin/setup` and `bin/rails db:seed`.

## Useful commands

| Command | What it does |
|---|---|
| `bin/rails server` | Starts the app on port 3000 |
| `bin/rails console` | Opens the Rails console |
| `bin/rails routes -g product` | Lists the product routes |
| `bin/rails db:migrate` | Applies new migrations |
| `bin/rails db:seed` | Loads the starter data |
| `bin/rails test` | Runs the tests |
| `bin/rubocop` | Checks code style |
| `bin/brakeman` | Scans for security problems in the code |
| `bin/bundler-audit` | Checks gems for known vulnerabilities |
| `bin/ci` | Runs the main checks above in one go |

## Continuous integration

GitHub Actions runs on every pull request: `scan_ruby` (Brakeman and bundler-audit), `scan_js`, `lint`, `test` and `system-test`. Dependabot opens pull requests for dependency updates.

When changing the Ruby version, update `.ruby-version`, `.tool-versions` and the `RUBY_VERSION` in the `Dockerfile` together.

## Status and next steps

- [ ] Product form: category dropdown, price and stock fields, and showing validation errors
- [ ] Show reviews on the product page
- [ ] Write tests (the generated fixtures still need updating)
- [ ] Deploy to Render
