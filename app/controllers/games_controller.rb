class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    # @participants = options_for_participant_select
  end

  def edit
    # @participants = options_for_participant_select
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_url(@game), notice: 'Games was successfully created.'
    else
      # @participants = options_for_participant_select
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @game.update(game_params)
      redirect_to game_url(@game), notice: 'Games was successfully updated.'
    else
      @participants = options_for_participant_select
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy

    redirect_to games_url, notice: 'Game was successfully destroyed.', status: :see_other
  end

  private

  def game_params
    params.require(:game).permit(:game_date)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  # def options_for_participant_select
  #   Participant.order(:name).all.map { |participant|[participant.name, participant.id] if participant.active?}
  # end

end
