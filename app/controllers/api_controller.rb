class ApiController < ApplicationController

  def summoner_name
    summoner_name = RiotApi.fetch_data_for_summoner_name("boseu")
    render json: summoner_name
  end

  def leaderboard
    leaderboard = RiotApi.fetch_data_for_leaderboard
    render json: leaderboard
  end



end
