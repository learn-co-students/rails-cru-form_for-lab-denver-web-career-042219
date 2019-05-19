Rails.application.routes.draw do
root 'artist#index'

  get 'genre/index'

  get 'genre/new'

  get 'genre/show'

  get 'genre/create'

  get 'genre/edit'

  get 'genre/update'

  get 'artist/index'

  get 'artist/new'

  get 'artist/show'

  get 'artist/edit'

  get 'artist/create'

  get 'artist/update'

  get 'song/index'

  get 'song/create'

  get 'song/new'

  get 'song/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
