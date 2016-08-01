Rails.application.routes.draw do
  root 'home#index'
  resources :boats
  resource :weather, :format => true, constraints: lambda { |req| req.format == :json } , :only => [:show]

  # http://guides.rubyonrails.org/routing.html
end
