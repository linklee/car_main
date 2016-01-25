class LeadsController < ApplicationController
  #before_action :signed_in_user, only: [:index, :edit, :update]
  #before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:index, :edit, :update, :destroy]
 

  def index
        @leads = Lead.paginate(page: params[:page])
  end

  def destroy
    Lead.find(params[:id]).destroy
    flash[:success] = "record deleted."
    redirect_to leads_url
  end

  def show
    @lead = Lead.find(params[:id])
  end
  def new
    @lead = Lead.new
  end
  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      #sign_in @lead
	  flash[:success] = "Welcome!"
      redirect_to @lead
    else
      render 'new'
    end
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])
    if @lead.update_attributes(status: params[:status])
      flash[:success] = "Information updated"
      redirect_to leads_url
    else
      render 'edit'
    end
  end



  private

    def lead_params
      params.require(:lead).permit(:name, :email, :phone, :car_type,
      :car_year, :car_manufacturer, :car_model, :photo1, :photo2, :coords )
    end

    # Before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @lead = Lead.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end