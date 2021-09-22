class CharacterLocationsController < ApplicationController
  before_action :set_character_location, only: %i[ show edit update destroy ]

  # GET /character_locations or /character_locations.json
  def index
    @character_locations = CharacterLocation.all
  end

  # GET /character_locations/1 or /character_locations/1.json
  def show
  end

  # GET /character_locations/new
  def new
    @character_location = CharacterLocation.new
  end

  # GET /character_locations/1/edit
  def edit
  end

  # POST /character_locations or /character_locations.json
  def create
    @character_location = CharacterLocation.new(character_location_params)

    respond_to do |format|
      if @character_location.save
        format.html { redirect_to @character_location, notice: "Character location was successfully created." }
        format.json { render :show, status: :created, location: @character_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_locations/1 or /character_locations/1.json
  def update
    respond_to do |format|
      if @character_location.update(character_location_params)
        format.html { redirect_to @character_location, notice: "Character location was successfully updated." }
        format.json { render :show, status: :ok, location: @character_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_locations/1 or /character_locations/1.json
  def destroy
    @character_location.destroy
    respond_to do |format|
      format.html { redirect_to character_locations_url, notice: "Character location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_location
      @character_location = CharacterLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_location_params
      params.require(:character_location).permit(:coordinates, :character_img_file, :image_id)
    end
end
