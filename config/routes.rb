Rails.application.routes.draw do
  resources :photos do
    collection do
        get 'search'
    end
  end
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
