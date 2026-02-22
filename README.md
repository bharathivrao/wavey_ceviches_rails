# Wavey Ceviches Rails

Rails app for the Wavey Ceviches website with:

- Home page (`/`)
- Menu page (`/menu`)
- Online ordering UI (`/online-ordering`)

## Stack

- Ruby `2.6.x` (current local scaffold used `2.6.10`)
- Rails `6.0.3.1`
- Puma web server

Ruby is pinned in:

- `.ruby-version`
- `Gemfile`
- `runtime.txt` (useful for Render/Heroku-style deploys)

## Local Setup

```bash
bundle install
bin/rails server
```

Open `http://localhost:3000`.

## Routes

- `/` -> home
- `/menu` -> menu
- `/online-ordering` -> online ordering UI (frontend cart demo)

## Project Structure

- `app/views/pages/home.html.erb`
- `app/views/pages/menu.html.erb`
- `app/views/pages/online_ordering.html.erb`
- `app/views/shared/_site_header.html.erb`
- `app/views/shared/_site_footer.html.erb`
- `app/assets/stylesheets/site_shared.css`
- `app/assets/stylesheets/pages_home.css`
- `app/assets/stylesheets/pages_menu.css`
- `app/assets/stylesheets/pages_online_ordering.css`

## Deployment (Render / Railway / Heroku-style)

This repo includes a `Procfile`:

```procfile
web: bundle exec puma -C config/puma.rb
```

Typical environment variables:

- `RAILS_ENV=production`
- `RAILS_LOG_TO_STDOUT=1`
- `RAILS_SERVE_STATIC_FILES=1`
- `RAILS_MASTER_KEY=<your master key>` (only if you add encrypted credentials)

Ruby version note:

- Use Ruby `2.6.10` to match this project.
- If your host no longer supports Ruby `2.6`, upgrade Rails/Ruby before deploying.

## Important Note About Credentials

The initial scaffold in this environment failed during `credentials.yml.enc` generation due a local OpenSSL issue. The app itself was generated and the pages are present, but you may want to generate credentials on your machine before deploying:

```bash
bin/rails credentials:edit
```

This creates:

- `config/credentials.yml.enc`
- (uses) `config/master.key`

## GitHub Push

```bash
git add .
git commit -m "Initial Wavey Ceviches Rails site"
git branch -m main
git remote add origin <YOUR_GITHUB_REPO_URL>
git push -u origin main
```
