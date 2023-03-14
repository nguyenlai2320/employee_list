Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "employees#index"
    concern :paginatable do 
        get '(page/:page)', action: :index, on: :collection, as: ''
    end
    resources :employees, concerns: :paginatable
end
