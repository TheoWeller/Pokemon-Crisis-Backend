class Api::V1::TrainersController < ApplicationController


  def create
    @trainer = Trainer.create(name: params["name"])
    render json: @trainer
  end

end
