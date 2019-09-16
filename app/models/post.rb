class Post < ApplicationRecord

  enum sex_post:{
      KIDS: 0,
      WOMAN: 1,
      MAN: 2
  }

# refile用
attachment :image

belongs_to :end_user
belongs_to :genre
belongs_to :style

end
