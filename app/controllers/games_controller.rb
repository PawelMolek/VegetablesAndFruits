class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path, notice: "Game was successfuly created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @game.update(game_params)
      redirect_to games_path, notice: "Game was successfuly updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy

    redirect_to games_path, status: :see_other, notice: "Game was successfuly deleted"
  end

  private

  def game_params
    params.require(:game).permit(:game_date, participant_ids: [], participants_attributes: [:name])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end