Rails.application.routes.draw do
  get 'result/filtere'
  resources :all_sharks
  root :to => 'result#filtere'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
