Makerparent::Application.routes.draw do
  resources :projects

  root 'welcome#index'
end
