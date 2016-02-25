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
    #form_tag(controller: "people", action: "search", method: "get", class: "nifty_form")
    @lead = Lead.find(params[:id])
  end
  def new
    @lead = Lead.new
  end
  def create
    @lead = Lead.new(lead_params)
    @lead.status = '0';
    @lead.ticket = rand(1000..10000);
    if @lead.save
      
      #create car_photos
      @car_photo = CarPhoto.new
      @car_photo.user_id = @lead.id
      @car_photo.save

      #email to @lead
      RestClient.post "https://api:key-f99e5c3db48a9ad293da99a2b7e9da0b"\
      "@api.mailgun.net/v3/sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org/messages",
      :from => "Fast Autobody Center <fbc@sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org>",
      :to => @lead.email,
      :subject => "Request successfully created!",
      :text => "Thank you for using our service. We will contact you as soon as possible to give you our estimation. Your ticket number is "  + @lead.ticket.to_s

      #email to me
      #RestClient.post "https://api:key-f99e5c3db48a9ad293da99a2b7e9da0b"\
      #{}"@api.mailgun.net/v3/sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org/messages",
      #:from => "Fast Autobody Center <fbc@sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org>",
      #:to => "nevernight721@gmail.com",
      ##"edwineyvazian@gmail.com",
      #:subject => "New customer!",
      #:text =>  "name: " + @lead.name + " phone: " + @lead.phone + " ticket: " + @lead.ticket.to_s

 #email to admin
      RestClient.post "https://api:key-f99e5c3db48a9ad293da99a2b7e9da0b"\
      "@api.mailgun.net/v3/sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org/messages",
      :from => "Fast Autobody Center <fbc@sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org>",
      :to => "edwineyvazian@gmail.com",
      #"edwineyvazian@gmail.com",
      :subject => "New customer!",
      :text =>  "name: " + @lead.name + " phone: " + @lead.phone + " ticket: " + @lead.ticket.to_s
 


      flash[:success] = "Request successfully created! 
      Thank you. We will contact you as soon as possible to give you our estimation.
      Your ticket number is  " + @lead.ticket.to_s
      redirect_to "/thanks"
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
      redirect_to "/leads/"
    else
      render 'edit'
    end
  end



  private

  def lead_params
    params.require(:lead).permit(:name, :email, :phone, :car_type,
      :car_year, :car_manufacturer, :car_model, :photo1, :photo2, :coords, 
      :vin, :insurance, :i_comment )
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