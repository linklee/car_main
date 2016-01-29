class StaticPagesController < ApplicationController



  def help
  end
  def about
  end
  def contact
  end 

  def whys 

  end
  

  def check_lead_car_status
  	@lead = Lead.find_by(phone: params[:phone])
    #<%-@leads.each do |lead| -%>   @leads = Lead.where(phone: params[:phone])
  end
  def home
   @whys= [["Estimate using your mobile device", "slider1.jpg"], 
   ["Repair bumper in your place", "portfolio/bumper.jpg"],
   ['Towing', "portfolio/towing2.jpg"], 

   ['Paintless 
    dent repair','portfolio/paint.jpg'],
    ['Auto glass repair','portfolio/windows_repair.jpg'],

   #6
   ['Insurance claim process','portfolio/man_paper.jpg'],

   #7
   ['Restore light','portfolio/restore_light.jpg'],
   #8
   ['Rent a car', 'portfolio/rent.jpg'],
   #9
   ['Uber and Lyft drivers', 'portfolio/uber.jpg']]

 end
 def make_appointment

  flash[:success] = "Request successfully created!" 

  RestClient.post "https://api:key-f99e5c3db48a9ad293da99a2b7e9da0b"\
  "@api.mailgun.net/v3/sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org/messages",
  :from => "Mailgun Sandbox <postmaster1@sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org>",
  :to => "jonsstark <nevernight721@gmail.com>",
  :subject => "Customer wants to make an appointment",
  :text => "name: " + params[:name].to_s+ " --- phone: " + params[:phone].to_s + "---- details" + params[:text].to_s  
    redirect_to "/appointment"

end
def pages
  @page_parts = PagePart.where(page_name: params[:page])

end

end