Rails.application.routes.draw do
 
  resources :fronts
 root to: 'recipes#new'
resources :recipes
end
