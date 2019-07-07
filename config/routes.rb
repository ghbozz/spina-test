Rails.application.routes.draw do
  mount Spina::Engine => '/'

  Spina::Engine.routes.draw do
    resources :projects, only: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
