class Api::V1::TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
    @sorted_trainers = @trainers.sort_by {|a| -a.win.to_i}
    
    render json: @sorted_trainers.first(5)
  end


  def create
    @player1 = Trainer.find_or_create_by(name: params["player1"])
    @player2 = Trainer.find_or_create_by(name: params["player2"])

    @players = {player1: @player1, player2: @player2}
    render json: @players
  end

  def update
    puts params
    @winner = Trainer.find(params["winner"])
    @winner.update(win: @winner.win.to_i + 1)
    @loser = Trainer.find(params["loser"])
    @loser.update(loss: @loser.loss.to_i + 1)
  end

end
