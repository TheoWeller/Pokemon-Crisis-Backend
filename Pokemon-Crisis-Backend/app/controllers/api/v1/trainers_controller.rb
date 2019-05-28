class Api::V1::TrainersController < ApplicationController


  def create
    @player1 = Trainer.find_or_create_by(name: params["player1"])
    @player2 = Trainer.find_or_create_by(name: params["player2"])

    @players = {player1: @player1, player2: @player2}
    render json: @players
  end

end
