class Genre < ApplicationRecord


  # ジャンル => 空欄だめ、1文字〜30文字以内で入力、ユニーク
  validates :genre, presence: true, uniqueness: true, length: { in: 1..30 }


  has_many :posts

  Kaminari.configure do |config|
    config.default_per_page = 30
  end

end
