class GamesController < ApplicationController
  before_action :set_game, only: %i[edit update destroy]
  before_action :set_participant, only: %i[edit update destroy]
  before_action :set_snack, only: %i[edit update destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @snacks = options_for_snack_select
    @participants = options_for_participant_select

  end

  def show
    @games = Game.all
    @participants = Participant.all
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
    params.require(:game).permit(:game_date, :snack_id, :participant_id)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  def options_for_snack_select
    Snack.order(:title).all.map { |snack| [snack.title, snack.id] }
  end


  def options_for_participant_select
    Participant.order(:name).all.map { |participant|[participant.name, participant.id]}
  end

  def set_participant
    @participant = Participant.find(params[:participant_id])
  end

  def set_snack
    @snack = Snack.find(params[:snack_id])
  end
end
