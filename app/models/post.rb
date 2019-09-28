class Post < ApplicationRecord

  enum sex_post:{
      KIDS: 0,
      WOMAN: 1,
      MAN: 2
  }

  enum style:{
    PantsStyle: 0,
    SkirtStyle: 1
}

  # refile用
  attachment :image


  has_many :likes, dependent: :destroy

  belongs_to :end_user
  belongs_to :genre

  # いいね機能
  def favorited_by?(end_user)
    likes.where(end_user_id: end_user.id).exists?
  end

end