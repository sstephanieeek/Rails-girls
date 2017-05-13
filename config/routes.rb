Rails.application.routes.draw do
  get    '/comments'           => 'comments#index'

  get    '/comments/new'       => 'comments#new', as: 'new_comment'
  get    '/comments/:id/edit'  => 'comments#edit', as: 'edit_comment'
  get    '/comments/:id'       => 'comments#show', as: 'comment'

  post   '/comments'           => 'comments#create'
  patch  '/comments/:id'       => 'comments#update'
  put    '/comments/:id'       => 'comments#update'

  delete '/comments/:id'       => 'comments#destroy'

  get 'pages/info' => 'pages#info'

  root :to => redirect('/ideas')
  get    '/ideas'           => 'ideas#index'

  get    '/ideas/new'       => 'ideas#new', as: 'new_idea'
  get    '/ideas/:id/edit'  => 'ideas#edit', as: 'edit_idea'
  get    '/ideas/:id'       => 'ideas#show', as: 'idea'

  post   '/ideas'           => 'ideas#create'
  patch  '/ideas/:id'       => 'ideas#update'
  put    '/ideas/:id'       => 'ideas#update'

  delete '/ideas/:id'       => 'ideas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
