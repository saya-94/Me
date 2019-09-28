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
  resources :end_users do

  collection do
    get 'change_password'
    patch 'password_update' => 'end_users#password_update', as: 'password_update'
    get 'change_email'
    patch 'email_update' => 'end_users#email_update', as: 'email_update'
    end
  member do
    get 'setting'
  end
  end



  # 管理者
  resources :admins, only: [:index, :show, :edit, :update] do
  member do
  delete "/delete_users" => "admins#delete", as:"delete_users"
  get '/search' => "admin#search"
  end
  end


  # 投稿
  resources :posts do
    # いいね
    resource :likes, only: [:create, :destroy]
    # ブックマーク
    resource :bookmarks, only: [:create, :destroy]
  end

  # フォロー
  resources :followers

  #ジャンル
  resources :genres





  end
