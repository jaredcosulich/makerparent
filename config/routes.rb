Makerparent::Application.routes.draw do
  resources :experiences

  resources :instructions

  resources :projects do
    resources :instructions
  end

  get 'about', to: 'about#index'
  root 'welcome#index'
end
