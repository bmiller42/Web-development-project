Rails.application.routes.draw do

    get 'references/new', to: 'references#new', as: 'new_reference'
    get 'references/:id/edit', to: 'references#edit', as: 'edit_reference'
    get 'references/:id', to: 'references#show', as: 'reference'
    get 'references', to: 'references#index', as: 'references'
    post 'references', to: 'references#create'
    patch 'references/:id', to: 'references#update'
    root 'references#index'

end
