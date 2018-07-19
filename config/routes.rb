Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/summoner_name/:id', to: 'api#summoner_name'

  get '/leaderboard', to: 'api#leaderboard'

  get 'summoner_id_data/:id', to: 'api#summoner_id_data'

end
