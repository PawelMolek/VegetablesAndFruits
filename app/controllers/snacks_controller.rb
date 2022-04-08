class SnacksController < ApplicationController
  def new
    @snack = Snack.new
  end

  def create
    @snack = Snack.new(snack_params)

    if @snack.save
      redirect_to root_path
    else
      render :new, status: :unproccesable_entity, notice: "Something's went wrong"
    end
  end

  private

  def snack_params
    params.require(:snack).permit(:title, :active, :points)
  end
end