# 【app_name】
ゲームソフト投稿サイト

# 【URL】
 http://3.115.206.127/ 

# 【企画背景】
就活用のポートフォリオとして制作中の自作アプリです。
 ゲームが好きで他のユーザーからゲームソフトが出ているゲームソフトの紹介でユーザーが購入するきっかけになればと思い作りました。機能としてはシンプルですが、開発環境にDocker、インフラにAWSを使用しています。またRSpecによる単体テスト・統合テスト・機能テストを追加しました。

# 【使用言語、フレームワーク】
- HTML/CSS(SCSS) 
- jquery
- rails 5.2.2
- ruby 2.6.3
- AWS(VPC, EC2, IAM, S3, ALB)
- docker
- GitHub
- Nginx
- mysql

# 【内容】
- ゲームソフト紹介サイトをクリックするとホーム画面に戻る
- ログインIDPW/ログアウト機能
- 投稿機能
- ゲームソフト詳細画面
- 編集画面、編集機能
- 削除完了画面、削除機能
- ページネーション機能
- ransackによる検索機能 
- カンタンログイン機能
- RSpec
 ・統合テスト(system spec)
 ・機能テスト(request spec)
 ・単体テスト(モデル等)
- ハンバーガーメニュー機能
- レビュー投稿、一覧機能

- カンタンログインでテストユーザーでログインできます


# 【課題, 今後実装したい機能】
・CircleCIの導入
・コードを美しく記述
・AWSのその他の機能使用

# 環境構築手順
1. イメージを生成する
```
$ docker-compose build
```

2. コンテナを起動する データベースセットアップ前にコンテナを起動していないとデータベースのセットアップコマンドが失敗する
```
$ docker-compose up
```

3. データベースをセットアップする
```
$ docker-compose run web rails db:create rails db:migrate
```

