class StaticPagesController < ApplicationController
  def home
  end
  
  def help
  end
  def about
  end
  def contact
  end
  def check_lead_car_status

  	@lead = Lead.find_by(phone: params[:phone])
    #<%-@leads.each do |lead| -%>   @leads = Lead.where(phone: params[:phone])
  end

end
