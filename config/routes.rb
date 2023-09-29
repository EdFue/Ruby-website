# This code was written with assistance by OpenAI's GPT-4 model

Rails.application.routes.draw do
  resources :people
  resources :libraries do
    collection do
      delete 'delete_selected'
    end
  end
  resources :counties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
