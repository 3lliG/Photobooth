class PhotoBoothsController < ApplicationController
  before_action :set_photo_booth, only: [:show, :edit, :update, :destroy]

  # GET /photo_booths
  # GET /photo_booths.json
  def index
    @photo_booths = PhotoBooth.all
  end

  # GET /photo_booths/1
  # GET /photo_booths/1.json
  def show
  end

  # GET /photo_booths/new
  def new
    @photo_booth = PhotoBooth.new
  end

  # GET /photo_booths/1/edit
  def edit
  end

  # POST /photo_booths
  # POST /photo_booths.json
  def create
    @photo_booth = PhotoBooth.new(photo_booth_params)

    respond_to do |format|
      if @photo_booth.save
        format.html { redirect_to @photo_booth, notice: 'Photo booth was successfully created.' }
        format.json { render :show, status: :created, location: @photo_booth }
      else
        format.html { render :new }
        format.json { render json: @photo_booth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_booths/1
  # PATCH/PUT /photo_booths/1.json
  def update
    respond_to do |format|
      if @photo_booth.update(photo_booth_params)
        format.html { redirect_to @photo_booth, notice: 'Photo booth was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_booth }
      else
        format.html { render :edit }
        format.json { render json: @photo_booth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_booths/1
  # DELETE /photo_booths/1.json
  def destroy
    @photo_booth.destroy
    respond_to do |format|
      format.html { redirect_to photo_booths_url, notice: 'Photo booth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_booth
      @photo_booth = PhotoBooth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_booth_params
      params.fetch(:photo_booth, {})
    end
end
