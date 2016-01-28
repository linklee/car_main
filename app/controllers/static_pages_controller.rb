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

end