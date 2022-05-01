class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show edit update destroy]

  def index
    @participants = Participant.all
  end

  def show
  end

  def new
    @participant = Participant.new
  end

  def edit
  end

  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      redirect_to root_path, notice: "success"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @participant.update(participant_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @participant.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def participant_params
    params.require(:participant).permit(:name, :active, :points)
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end

end
