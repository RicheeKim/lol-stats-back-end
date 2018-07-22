class ApiController < ApplicationController

  def summoner_name
    summoner_name = RiotApi.fetch_data_for_summoner_name(params[:id])
    render json: summoner_name
  end

  def summoner_id_data

    summoner_id_data = RiotApi.fetch_data_for_summoner_id(params[:id])
    render json: summoner_id_data
  end

  def leaderboard
    leaderboard = RiotApi.fetch_data_for_leaderboard
    render json: leaderboard
  end

  def account_id_matches
    account_id_matches = RiotApi.fetch_matches_for_account_id(params[:id])
    render json: account_id_matches
  end



end
