Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy', as: :custom_destroy_user_session
    root to: 'homes#top', as: :custom_root # ログアウト後に表示するページのルートパスを指定する
  end
  get 'home/about', to: 'homes#about'
  resources :users, :posts do
    resources :post_comments, only: [:create, :destroy]
  end

end
