class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # :database_authenticatable(データの正確性の検証)
  # :registerable(ユーザー登録の編集、削除)
  # :recoverable(パスワードをリセット)
  # :rememberable(ログイン情報の保存)
  # :validatable(emailのフォーマットなどのバリデーション)

  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
