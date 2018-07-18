Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/summoner_name', to: 'api#summoner_name'

  get '/leaderboard', to: 'api#leaderboard'

end
