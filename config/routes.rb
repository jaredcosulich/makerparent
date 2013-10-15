Makerparent::Application.routes.draw do
  resources :projects

  get 'about', to: 'about#index'
  root 'welcome#index'
end
