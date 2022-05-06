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
    @game.participants = Participant.all
    # @game.participants << Participant.find_by(id: 1)
    # @game.participants << Participant.find_by(id: 2)
    # @game.add_snack(Snack.first, game.participants.first)
    # @game.add_snack(Snack.second, game.participants.second)
    # binding.pry
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
    params.require(:game).permit(:game_date)
  end
  # , participant_ids: [], participants_attributes: [:name], snack_attributes: [:name], snack_ids: []

  def set_game
    @game = Game.find(params[:id])
  end

end