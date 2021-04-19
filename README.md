# テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| encrypted_password | string | null: false |
| profile            | text   |             |

### Association

- has_many :tweets
- has_many :comments


## tweetsテーブル

| Column     | Type       | Options           |
| ---------- | ---------- | ----------------- |
| title      | string     | null: false       |
| eat_time   | string     |                   |
| time_taken | string     |                   |
| recipe     | text       |                   |
| supplement | text       |                   |
| user_id    | references | foreign_key: true |


### Association

- has_many   :comments
- belongs_to :user

## commentsテーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| text     | string     | null: false       |
| user_id  | references | foreign_key: true |
| tweet_id | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet


# アプリケーション名
today-meal

# アプリケーションの概要
献立を記録して、他のユーザーとシェアすることができます。

# 利用方法
まず、画面右上の新規登録ボタンからユーザー登録を行います。
その後左上の新規投稿ボタンから必要事項を入力し作成ボタンをクリックすることで献立を記録することができます。

# 目指した課題解決
献立を記録及び他人の投稿を見ることで今後の献立づくりの参考手助けをします。
インスタグラム等の既存のアプリではインスタ映えを意識したものを揚げる傾向にあるのでよその家が何を食べているのか等身大の献立を見ることができるようにしました。

# 洗い出した要件

## user管理機能
### 目的
ユーザー管理を行うため。
### ユースケース
・ログアウト状態ならヘッダーに新規登録とログインボタンが表示
・ログイン状態ならニックネームとログアウトボタンが表示
・ログアウトボタンクリックでログアウトができる
・ヘッダーのニックネームをクリックするとユーザー情報ページに遷移する
・ユーザー情報ページの編集ボタンをクリックするとユーザー情報の編集ができる

## 新規投稿機能
### 目的
献立を記録するため。
### ユースケース
・ヘッダーの新規投稿ボタンをクリックすると入力ページへ遷移する
・必要事項を入力し、作成ボタンをクリックすると新規投稿できる

## コメント機能
### 目的
ユーザー間で投稿に関する質問等、交流を図るため。
### ユースケース
・投稿詳細ページ下部からコメントを入力し送信ボタンをクリックするとコメントが投稿される

