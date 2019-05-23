class Api::V1::PokemonsController < ApplicationController

  def index
    response = RestClient.get "https://pokeapi.co/api/v2/pokemon/" 
    render json: response.body
  end
end
