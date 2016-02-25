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
    if @lead
      @phone = @lead.phone
    end
    #<%-@leads.each do |lead| -%>   @leads = Lead.where(phone: params[:phone])
  end
  def check_ticket_car_status
    @lead = Lead.find_by(phone: params[:phone])
    if @lead.ticket !=  params[:ticket]
      @lead = nil
    end
    #<%-@leads.each do |lead| -%>   @leads = Lead.where(phone: params[:phone])
  end
  def home
   @whys= [["Estimate using your mobile device", "slider1.jpg"], 
   ["Repair bumper in your place", "portfolio/bumper.jpg",""],
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
   ['Uber and Lyft drivers', 'portfolio/uber.jpg'],
   #10
   ['Car repair process', 'stat/services2.png'], 
 ]

 @whys_descr = [
  PagePart.find_by(page_name: 'estimate').text,
  PagePart.find_by(page_name: 'bumber repair').text,
  PagePart.find_by(page_name: 'towing').text,
  PagePart.find_by(page_name: 'dent repair').text,
  PagePart.find_by(page_name: 'auto glass repair').text,
  PagePart.find_by(page_name: 'insurance_claim').text,
    #PagePart.find_by(page_name: 'light').text,
    "","",
    PagePart.find_by(page_name: 'rent').text,
    PagePart.find_by(page_name: 'uber').text,
    PagePart.find_by(page_name: 'services').text,

  ]

end
def make_appointment

  flash[:success] = "Request successfully created!" 
  # to me
  RestClient.post "https://api:key-f99e5c3db48a9ad293da99a2b7e9da0b"\
  "@api.mailgun.net/v3/sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org/messages",
  :from => "FastAutobodyCenter <postmaster1@sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org>",
  :to => "nevernight721@gmail.com",
  :subject => "Customer wants to make an appointment",
  :text => "name: " + params[:name].to_s+ " --- phone: " + params[:phone].to_s + "---- details" + params[:text].to_s  
 
  #to admin
  RestClient.post "https://api:key-f99e5c3db48a9ad293da99a2b7e9da0b"\
  "@api.mailgun.net/v3/sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org/messages",
  :from => "FastAutobodyCenter <postmaster1@sandbox43f2b94d5491492fb7be34200bc81352.mailgun.org>",
  :to => "edwineyvazian@gmail.com",
  :subject => "Customer wants to make an appointment",
  :text => "name: " + params[:name].to_s+ " --- phone: " + params[:phone].to_s + "---- details" + params[:text].to_s  
  redirect_to "/thanks"
end
def pages
  @page_parts = PagePart.where(page_name: params[:page])

end

end