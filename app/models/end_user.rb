class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ユーザー名 => 空欄だめ、1文字〜30文字以内で入力
  validates :name, presence: true, length: { in: 1..30 }

  # 性別を必ず何かを選択すること
  validates :sex, presence: true

  # メールアドレス => 空欄だめ、【***@***.***】の形で入力　例:aaa@aa.a
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }


  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :followers, dependent: :destroy
  has_many :counts, dependent: :destroy


  # 論理削除の定義追記
  acts_as_paranoid

  #refile用
  attachment :profile_image

end
