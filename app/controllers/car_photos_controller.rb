class CarPhotosController < ApplicationController
  before_action :set_car_photo, only: [:show, :edit, :update, :destroy]

  # GET /car_photos
  # GET /car_photos.json
  def index
    @car_photos = CarPhoto.all
  end

  # GET /car_photos/1
  # GET /car_photos/1.json
  def show
  end

  # GET /car_photos/new
  def new
    @car_photo = CarPhoto.new
  end

  # GET /car_photos/1/edit
  def edit
  end
  def edit_photos 
    @car_photo = CarPhoto.find_by(user_id: params[:user_id])

  end
  # POST /car_photos
  # POST /car_photos.json
  def create
    @car_photo = CarPhoto.new(car_photo_params)

    respond_to do |format|
      if @car_photo.save
        format.html { redirect_to @car_photo, notice: 'Car photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @car_photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @car_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_photos/1
  # PATCH/PUT /car_photos/1.json
  def update
    respond_to do |format|
      if @car_photo.update(car_photo_params)
        format.html { redirect_to @car_photo, notice: 'Car photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_photos/1
  # DELETE /car_photos/1.json
  def destroy
    @car_photo.destroy
    respond_to do |format|
      format.html { redirect_to car_photos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_photo
      @car_photo = CarPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_photo_params
      params.require(:car_photo).permit(:p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :user_id)
    end
  end
