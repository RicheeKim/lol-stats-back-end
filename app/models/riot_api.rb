require 'rest-client'
require 'json'


class RiotApi < ApplicationRecord


  def self.fetch_data_for_summoner_name(summoner_name)

    res = RestClient.get("https://na1.api.riotgames.com/lol/summoner/v3/summoners/by-name/#{summoner_name}?api_key=#{API_KEY}")
    JSON.parse(res.body)
  end

  def self.fetch_data_for_leaderboard
    res = RestClient.get("https://na1.api.riotgames.com/lol/league/v3/challengerleagues/by-queue/RANKED_SOLO_5x5?api_key=#{API_KEY}")
    JSON.parse(res.body)
  end

  def self.fetch_matches_for_account_id(account_id)
    res = RestClient.get("https://na1.api.riotgames.com/lol/match/v3/matchlists/by-account/#{account_id}?endIndex=20&api_key=#{API_KEY}")
    JSON.parse(res.body)
  end

  def self.fetch_data_for_summoner_id(summoner_id)

    res = RestClient.get("https://na1.api.riotgames.com/lol/league/v3/positions/by-summoner/#{summoner_id}?api_key=#{API_KEY}")
    JSON.parse(res.body)
  end



end
