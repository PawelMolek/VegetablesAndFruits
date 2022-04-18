class SnacksController < ApplicationController
  before_action :set_snack, only: %i[show edit update destroy]
  # before_action :set_participant, only: %i[show edit update destroy]
  # before_action :set_game, only: %i[show edit update destroy]

  def index
    @snacks = Snack.all
  end

  def show
  end

  def new
    @snack = Snack.new
  end

  def edit
  end

  def create
    @snack = Snack.new(snack_params)

    if @snack.save
      redirect_to root_path, notice: "Correct"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @snack.update(snack_params)
      redirect_to root_path, notice: "Successful"
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @snack.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def snack_params
    params.require(:snack).permit(:title, :points, :active)
  end

  def set_snack
    @snack = Snack.find(params[:id])
  end

  # def set_game
  #   @game = Game.find(params[:game_id])
  # end

  # def set_participant
  #   @participant = Participant.find(params[:participant_id])
  # end
end