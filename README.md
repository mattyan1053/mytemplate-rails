# mytemplate-rails

Rails 8 + Podman で開発するテンプレート

## Verified Environments
- Podman: 5.2.2

## Versions
- Ruby: 3.4.2
- Node.js: 18.19.0
    - Yarn: 1.22.22

## Tech Stack
- Web アプリケーション
    - Ruby on Rails 8
- フロントエンド
    - TypeScript
    - Hotwired
        - Turbo
        - Stimulus
    - Tailwind CSS
- テスト
    - Ruby: RSpec
    - TypeScript: Jest
- 構文チェック
    - Ruby: Rubocop
    - TypeScript: ESLint + Prettier


## 本番環境用イメージ作成手順
```sh
# Build image
$ bin/build-image
```

## 開発環境構築手順
```sh
# Build development image
$ bin/build-image-dev

# Start Pod
$ podman play kube manifest.dev.yml

# DB initialization
$ podman exec mytemplate-rails-app bin/rails db:create db:migrate db:seed

# Install node modules
$ podman exec mytemplate-rails-app yarn install

# Start development!
$ podman exec -it mytemplate-rails-app bin/dev
```

## コマンド集
```sh
# Lint for Ruby
$ podman exec mytemplate-rails-app bin/rubocop [-A] <files>

# Test for Ruby
$ podman exec mytemplate-rails-app bin/rspec <files>

# Lint for TypeScript
$ podman exec mytemplate-rails-app yarn eslint <files>

# Autocomplete Lin for TypeScript
$ podman exec mytemplate-rails-app yarn prettier --write <files>

# Test for TypeScript
$ podman exec mytemplate-rails-app yarn jest <files>

```

## Gemini CLI 利用手順
```sh
# Set Google AI Studio API Key as an environment variable
$ export GEMINI_API_KEY="YOUR_API_KEY" # Alternatively, you can put .env in.

# Start gemini CLI
$ yarn exec gemini
```
