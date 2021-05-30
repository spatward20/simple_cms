Rails.application.routes.draw do

  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'

  match "demo/about_us", :to => "demo#about", :via => :get
  match "demo/contact_us", :to => "demo#contact", :via => :get

  # default route
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
