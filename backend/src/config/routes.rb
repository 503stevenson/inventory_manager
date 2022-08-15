Rails.application.routes.draw do
  devise_for :companies, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'companies' => 'companies#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
