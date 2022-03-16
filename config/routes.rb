Rails.application.routes.draw do
  get 'books/new' => 'books#new'
  root :to => 'homes#top'
  post 'books' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
