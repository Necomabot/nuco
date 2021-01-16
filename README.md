# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


# アプリケーションの内容

## アプリケーション名
nuco

## アプリケーション概要
- 猫の画像を投稿することができ、それに対してコメントすることができる。
- 猫好きの人と一緒にコメントしあい会話ができる。
- 投稿するときにカテゴリーを洗濯して自分か見たい情報を探しやすくする。
- ログインやログアウトができる。

## URL
デプロイ済みのURLはまだ

## テスト用アカウント
まだ

## 利用方法
自分が誰かに伝えたい猫の情報（写真や、猫カフェなど）を発信したりして使用する。

## 目指した課題解決
ネットであっちこっちを検索して探す人のために、猫のいろいろな情報が集まるアプリがあれば、すぐに見つかるし、探した情報で気になることがあれば投稿した本人に聞くこともでき情報をより細かく知ることができる。また、猫について語りたいと思う人が利用すると気になる人がいれば話しかけれるため猫について語り合うことができる。

## 洗い出した要件


## 実装した機能についてのGIFと説明


## 実装予定の機能


## ローカルでの動作方法