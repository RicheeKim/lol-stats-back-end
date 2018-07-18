class ApiController < ApplicationController

  def summoner_name
    byebug
    summoner_name = RiotApi.fetch_data_for_summoner_name(params[:id])
    render json: summoner_name
  end

  def summoner_id_data
    summoner_id_data = RiotApi.fetch_data_for_summoner_id("31239930")
    render json: summoner_id_data
  end

  def leaderboard
    leaderboard = RiotApi.fetch_data_for_leaderboard
    render json: leaderboard
  end



end
