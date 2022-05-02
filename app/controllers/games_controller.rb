class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    game = Game.create(game_params)
    redirect_to game
  end

  private

  def game_params
    params.require(:game).permit(:game_date, participant_ids:[], participants_attributes: [:name], snack_ids:[], snacks_attributes: [:name, :points])
  end
end