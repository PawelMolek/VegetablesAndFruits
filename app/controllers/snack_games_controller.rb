class SnackGamesController < ApplicationController
  before_action :set_snack_game, only: %i[ show edit update destroy ]

  # GET /snack_games or /snack_games.json
  def index
    @snack_games = SnackGame.all
  end

  # GET /snack_games/1 or /snack_games/1.json
  def show
  end

  # GET /snack_games/new
  def new
    @snack_game = SnackGame.new
  end

  # GET /snack_games/1/edit
  def edit
  end

  # POST /snack_games or /snack_games.json
  def create
    @snack_game = SnackGame.new(snack_game_params)

    respond_to do |format|
      if @snack_game.save
        format.html { redirect_to snack_game_url(@snack_game), notice: "Snack game was successfully created." }
        format.json { render :show, status: :created, location: @snack_game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @snack_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snack_games/1 or /snack_games/1.json
  def update
    respond_to do |format|
      if @snack_game.update(snack_game_params)
        format.html { redirect_to snack_game_url(@snack_game), notice: "Snack game was successfully updated." }
        format.json { render :show, status: :ok, location: @snack_game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @snack_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snack_games/1 or /snack_games/1.json
  def destroy
    @snack_game.destroy

    respond_to do |format|
      format.html { redirect_to snack_games_url, notice: "Snack game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack_game
      @snack_game = SnackGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snack_game_params
      params.require(:snack_game).permit(:snack_id, :game_id)
    end
end
