TechLOL::Application.routes.draw do
  get "tech_lol_series/index"

  get "photo_gallery/index"

  get "rift_warriors/index"

  get "events/index"

  get "home/index"

   root :to => 'home#index'
end
