class ParticipantsController < ApplicationController


  def index
    @participants = Participant.all
  end

  def show
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    @participant = Participant.find(params[:id])

    if @participant.update(participant_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy

    redirect_to root_path, status: :see_other
  end


  private

  def participant_params
    params.require(:participant).permit(:name, :active, :points)
  end
end
