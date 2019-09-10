Rails.application.routes.draw do
  devise_for :admins
  devise_for :end_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




  #ルートをpostsのindexに設定
  root "posts#index"

  # エンドユーザー
  resources :end_users

  # 管理者
  resources :manage_end_users

  # いいね
  resources :likes

  # ブックマーク
  resources :bookmarks

  # 投稿
  resources :posts

  # フォロー
  resources :followers


end
