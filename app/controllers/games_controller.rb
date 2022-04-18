class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @snacks = options_for_snack_select
    @participants = options_for_participant_select
  end

  def edit
    @snacks = options_for_snack_select
    @participants = options_for_participant_select
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_url(@game), notice: 'Games was successfully created.'
    else
      @snacks = options_for_snack_select
      @participants = options_for_participant_select

      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @game.update(game_params)
      redirect_to game_url(@game), notice: 'Games was successfully updated.'
    else
      @snacks = options_for_snack_select
      @participants = options_for_participant_select

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy

    redirect_to rounds_url, notice: 'Round was successfully destroyed.', status: :see_other
  end

  private

  def game_params
    params.require(:game).permit(:game_date, :points, :participant_one_id, :participant_two_id, :participant_three_id,
                                 :participant_four_id, :snack_one_id, :snack_two_id, :snack_three_id)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  def options_for_snack_select
    # Snack.where(id: Snack.pluck(:id).sample(3))
    Snack.order(:title).all.map { |snack| [snack.title, snack.id] }
  end

  def options_for_participant_select
    # Participant.all
    Participant.order(:name).all.map { |participant|[participant.name, participant.id]}
  end

end
