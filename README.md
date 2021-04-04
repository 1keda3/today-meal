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

