class Post < ApplicationRecord

  enum sex_post:{
      kids: 0,
      woman: 1,
      man: 2,
  }

# refile用
attachment :image

end
