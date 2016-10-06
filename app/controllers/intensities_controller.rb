class IntensitiesController < ApplicationController
  before_action :set_intensity, only: [:show, :edit, :update, :destroy]

  # GET /intensities
  # GET /intensities.json
  def index
    @intensities = Intensity.all
  end

  # GET /intensities/1
  # GET /intensities/1.json
  def show
  end

  # GET /intensities/new
  def new
    @intensity = Intensity.new
  end

  # GET /intensities/1/edit
  def edit
  end

  # POST /intensities
  # POST /intensities.json
  def create
    @intensity = Intensity.new(intensity_params)

    respond_to do |format|
      if @intensity.save
        format.html { redirect_to @intensity, notice: 'Intensity was successfully created.' }
        format.json { render :show, status: :created, location: @intensity }
      else
        format.html { render :new }
        format.json { render json: @intensity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intensities/1
  # PATCH/PUT /intensities/1.json
  def update
    respond_to do |format|
      if @intensity.update(intensity_params)
        format.html { redirect_to @intensity, notice: 'Intensity was successfully updated.' }
        format.json { render :show, status: :ok, location: @intensity }
      else
        format.html { render :edit }
        format.json { render json: @intensity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intensities/1
  # DELETE /intensities/1.json
  def destroy
    @intensity.destroy
    respond_to do |format|
      format.html { redirect_to intensities_url, notice: 'Intensity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intensity
      @intensity = Intensity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intensity_params
      params.require(:intensity).permit(:intensity, :description)
    end
end
