class RegionalProfilesController < ApplicationController
  before_action :set_regional_profile, only: [:show, :edit, :update, :destroy]



  # GET /regional_profiles
  # GET /regional_profiles.json
  
  def index
    @regional_profiles = RegionalProfile.all
    @regional_profiles_cork = RegionalProfile.find_by_id(1)
  end

  # GET /regional_profiles/1
  # GET /regional_profiles/1.json
  def show
    

  end


  # GET /regional_profiles/new
  def new
    @regional_profile = RegionalProfile.new
  end

  # GET /regional_profiles/1/edit
  def edit
  end

  # POST /regional_profiles
  # POST /regional_profiles.json
  def create
    @regional_profile = RegionalProfile.new(regional_profile_params)

    respond_to do |format|
      if @regional_profile.save
        format.html { redirect_to @regional_profile, notice: 'Regional profile was successfully created.' }
        format.json { render :show, status: :created, location: @regional_profile }
      else
        format.html { render :new }
        format.json { render json: @regional_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regional_profiles/1
  # PATCH/PUT /regional_profiles/1.json
  def update
    respond_to do |format|
      if @regional_profile.update(regional_profile_params)
        format.html { redirect_to @regional_profile, notice: 'Regional profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @regional_profile }
      else
        format.html { render :edit }
        format.json { render json: @regional_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regional_profiles/1
  # DELETE /regional_profiles/1.json
  def destroy
    @regional_profile.destroy
    respond_to do |format|
      format.html { redirect_to regional_profiles_url, notice: 'Regional profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regional_profile
      @regional_profile = RegionalProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def regional_profile_params
      params.require(:regional_profile).permit(:name, :population, :county, :local_govt, :description, :environment_id, :image_url, :updated)
    end
end
