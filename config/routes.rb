Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show]
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  devise_for :users
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
