Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  
  devise_for :end_users, controllers: {
    sessions:      'end_users/sessions',
    passwords:     'end_users/passwords',
    registrations: 'end_users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




  #ルートをpostsのindexに設定
  root "posts#index"

  # エンドユーザー
  resources :end_users

  # 管理者
  resources :admins

  # いいね
  resources :likes

  # ブックマーク
  resources :bookmarks

  # 投稿
  resources :posts

  # フォロー
  resources :followers


end