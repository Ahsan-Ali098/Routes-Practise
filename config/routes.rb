Rails.application.routes.draw do
  
  root to: "homes#index"
  namespace :admin do
    resources :articles
  end
  
  scope module: 'admin_1' do
    resources :comments
  end

  scope '/admin_withscope' do
    resources :articles
  end

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
