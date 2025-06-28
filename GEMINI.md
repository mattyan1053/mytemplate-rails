# GEMINI.md - Gemini CLIのためのプロジェクトコンテキスト

## プロジェクト概要

このアプリケーションは、様々なWeb技術やフレームワークのデモンストレーションを行うためのRuby on Railsプロジェクトです。

## 主要な技術スタック

- **バックエンド:** Ruby on Rails
- **フロントエンド:** Hotwired (Turbo, Stimulus), TypeScript
- **CSS:** Tailwind CSS v4
- **テスト:** RSpec
- **リンティング:** RuboCop
- **JavaScriptビルド:** esbuild
- **デプロイ:** Kamal

## よく使うコマンド

- **テスト実行:** `bundle exec rspec`
- **リンター実行:** `bundle exec rubocop`
- **JavaScriptビルド:** `yarn build`
- **CSSビルド:** `yarn build:css`

## コーディング規約

- Railsの標準的な規約に従ってください。
- RubyのスタイルはRuboCopの規約に従います。
- ユーザー向けのテキストにはi18nを使用してください。日本語と英語の両方に対応が必要です。
- 新機能を追加する際は、対応するRSpecテストも追加してください。
- CSSのスタイリングには、Tailwind CSSのユーティリティクラスを優先的に使用してください。カスタムCSSは `app/assets/stylesheets/application.tailwind.css` に記述します。

## 注意事項

- `theme()` のようなTailwind CSS v4の関数は、HTMLのインラインスタイルや `<style>` タグ内では直接使用せず、`application.tailwind.css` 内で `@apply` と共に使用するか、ユーティリティクラスに置き換えてください。
- Node.jsのバージョンは `Dockerfile` に記載されているバージョンを正とします。関連ファイル（`.node-version`, `.github/workflows/ci.yml` など）のバージョンを更新する際は、`Dockerfile` の記述に合わせてください。
