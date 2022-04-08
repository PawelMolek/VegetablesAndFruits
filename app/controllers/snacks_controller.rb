class SnacksController < ApplicationController


  def index
    @snacks = Snack.all
  end

  def edit
    @snack = Snack.find(params[:id])
  end

  def new
    @snack = Snack.new
  end

  def create
    @snack = Snack.new(snack_params)

    if @snack.save
      redirect_to root_path, notice: "Something's went wrong"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @snack = Snack.find(params[:id])

    if @snack.update(snack_params)
      redirect_to root_path, notice: "Succesful updatings"
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private

  def snack_params
    params.require(:snack).permit(:title, :active, :points)
  end
end