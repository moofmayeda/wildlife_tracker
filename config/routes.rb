Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'animals#index'})
  match('/', {:via => :post, :to => 'animals#create'})
  match('/regions/', {via: :get, to: 'regions#index'})
  match('/regions/', {via: :post, to: 'regions#create'})
  match('/:id', {:via => :get, :to => 'animals#show'})
  match('/:id', {:via => [:patch, :put], :to => 'animals#update'})
  match('/:id', {:via => :delete, :to => 'animals#destroy'})
  match('/:id', {:via => :post, :to => 'sightings#create'})
  match('/sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('/sightings/:id', {:via => [:patch, :put], :to=> 'sightings#update'})
  match('/sightings/:id', {:via => :delete, :to => 'sightings#destroy'})
end
