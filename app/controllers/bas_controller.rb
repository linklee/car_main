class BasController < ApplicationController
  before_action :set_ba, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,     only: [:index, :edit, :update, :destroy]

  # GET /bas
  # GET /bas.json
  def index
    @bas = Ba.all
  end

  # GET /bas/1
  # GET /bas/1.json
  def show
  end

  # GET /bas/new
  def new
    @ba = Ba.new
  end

  # GET /bas/1/edit
  def edit
  end

  # POST /bas
  # POST /bas.json
  def create
    @ba = Ba.new(ba_params)

    respond_to do |format|
      if @ba.save
        format.html { redirect_to @ba, notice: 'Ba was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ba }
      else
        format.html { render action: 'new' }
        format.json { render json: @ba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bas/1
  # PATCH/PUT /bas/1.json
  def update
    respond_to do |format|
      if @ba.update(ba_params)
        format.html { redirect_to @ba, notice: 'Ba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bas/1
  # DELETE /bas/1.json
  def destroy
    @ba.destroy
    respond_to do |format|
      format.html { redirect_to bas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ba
      @ba = Ba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ba_params
      params.require(:ba).permit(:src, :descr, :title)
    end
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
