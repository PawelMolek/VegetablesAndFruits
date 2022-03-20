class ParticipantsController < ApplicationController


  def index
    @participants = Participant.all
  end

  def show
    @participant = Participant.find(params[:id])
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(recipe_params)

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

    if @participant.update(recipe_params)
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
  def recipe_params
    params.require(:participant).permit(:name, :active)
  end
end
