require 'ffaker'

namespace :db do
  desc "Fill database with sample data"


  task populate: :environment do
 #auto glass repair
     PagePart.create!(  page_name: "insurance_claim",
      text: " 
Here are Fast Body Center we make sure that you under the process that we go through and keep you updated. Here are the steps that we go through whenever a car comes in to be repaired. 
<br>1. Contact Insurance Carrier 
<br>You simply tell us your insurance company and their phone number. We will take care of the rest. You will need to verify with them the shop that your car is at so that way we can coordinate with one another back and forth. 
<br>2. Your Estimate 
<br>The car is inspected and put through our latest technology to see how much it is going to cost to be repaired. The estimate will determine the cost of repairs. 
<br>3. Insurance Approval 
<br>We send the estimate to your insurance company and they review it. They might try to negotiate or question pricing, which could slow down the process. The insurance company will determine if there is anything that doesn’t need to be done to the car and will also ask for pictures for verification. Once they approve the estimate, we start to work on the car. 
<br>4. Vehicle Repair 
<br>Now that we have the approval to go ahead, we disassemble the car as needed. From here we might need to order parts. If we do not have to order anything we go ahead and start to repair everything that needs to be done. 
<br>5. Vehicle Reassembly 
<br>We make sure that your car is fixed. We test out anything that needs to be verified and start to put your car back together. We use a computer-based system to analyze your car and its framework; this will ensure the highest quality of your car. If the car is fixed we then go on to the next step of painting the car and taking away any rust, etc. 
<br>6. Vehicle Paint 
<br>Paint is an important part of the process since we have to make sure that the color matches and there is accurately. This is a process of every vehicle; all panels are prepared for paint, primed, then sealed. A clear coat is then placed over the paint to ensure drying. 
<br>7. Quality Assurance 
<br>We work with a team that is highly staffed and well trained. We make sure that your car is top-notch ready meaning that it is as close to brand new as can be. We don’t want it to look like it was just in an accident. 
<br>8. Car is Ready 
<br>Your car is now ready! This is the last step! The customer can now come pick up the vehicle and is paid for. The customer and insurance company completes the final paper work. 
<br>_______ 
<br>Before the job is started we provide you with the steps that will be taken and direct you to the steps on our website. Feel free to contact us and send us any information prior to bringing your car into the shop. We will do our best over the phone and website to take care of you. 
<br>You can stay up to date with your car process via text or visiting our website. We welcome online estimates and will compare it to other auto body shops. We will do our best to match prices, however we ensure quality and professionalism on every job that we do. 
<br>We use the best and uttermost highest equipment, parts, and technology. With that being said we take pride in our quality and professionalism. We guarantee all of these things; it isn’t always about price, but rather about quality. We never accept jobs that we don’t feel we cant complete.
      ")
  


 PagePart.create!(  page_name: "yelp_url",
    text: "http://www.yelp.com")
 
  Feedback.create!( k: "Amazing support!quck and fancy! bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla",
  photo_url: "http://www.landingsumo.com/demos/Theme%2017/assets/img/ui-01.jpg",
  name: "Eric Edwin",
  location: "Long beach, CA"
     )
  Feedback.create!( k: "Amazing support!quck and fancy! bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla",
  photo_url: "http://www.landingsumo.com/demos/Theme%2010/assets/img/ui-01.jpg",
  name: "Mark Twain",
  location: "Long beach, CA"
     )
 
   PagePart.create!(  page_name: "links",
    text: "<a href='/service_process' class='smoothScroll '>Our service process</a>
    <a href='/restore' class='smoothScroll '>Car repair process</a>")
   
       #stuff
       PagePart.create!(  page_name: "phone",
        text: "818-844-7529")

       PagePart.create!(  page_name: "logo",
        text: "Fast Autobody Center")
       
       PagePart.create!(  page_name: "css",
        text: "<style>
        .phone-header {
          /*phone  font-size , you right now 23px*/

          font-size: 23px ;

          /*phone  font-size , you right now white*/

          color:white !important; }

          /* logo font-size */
          .logo-sign{ 
            font-size: 3em !important  }

            /* logo color  ( change white for blue to see the result */

              .logo-sign {
                color: white !important
              }

              </style>")
       
       admin = User.create!(name: "Example User",
         email: "admin@admin.com",
         password: "admin1",
         password_confirmation: "admin1",
         admin: true)

       4.times do |n|
        Article.create!(header: "holiday driving tips", day: "31", month: "Jan'16", p:
          "some text texttextsdfkldskl lkdfsklfkld sfkldjsm,f jkdsk text dsfkjsdjkfkjdsjkfdsjk some text texttextsdfkldskl lkdfsklfkld sfkldjsm,f jkdsk text dsfkjsdjkfkjdsjkfdsjk dsfkjsdjkfkjdsjkfdsjk ...",
          link: "http://blog.com/posts/5", string:"https://www.carwise.com/blog/wp-content/uploads/2015/11/Holiday-Driving1-770x389.jpg?resolution=358,1")
      end
    #auto glass repair
    PagePart.create!(  page_name: "services",
      text: "<b>1. The Accident </b>- After the accident can be nerve racking and overwhelming we step in to make sure that you are taken well care of and not taken advantage of. 
      <br><br>• Contact insurance carrier - We do this so you don’t have to! We make sure to interact with the insurance companies and make sure that you are taken well care of. 
        <br><br>• Drop by or schedule an appointment - From there your insurance company will get in touch with us for you to set up an appointment. We get all the details that we need in order to move forward efficiently. 
        <br><br><b>2. Your Estimate</b> We offer free estimates! We do this to assess how much damage has come from the accident and how much it is going to cost us. We have highly trained advisors who complete your estimate accurately and efficient. 
          <br><br>• Prepare estimate - We typically already have an idea of your estimate once you submitted your image at the beginning, but we send it to your insurance company as well. 
          <br><br>• Arrange rental car - If there is a specific kind of car youd like to rent, we can work with you to arrange that. We make sure that you are well taken care of throughout this whole process. 
          <br><br>• Insurance company review - With your rental, and estimate, we always send the information to your insurance company so that they can approve and keep you in the loop! 
          <br><br>
          • Provide contact info for updates via phone, email or text - We want to keep you updated so we make sure to have all areas covered. Even though you have a rental car, theres no car like your own! 
          <br><br>
          <b>3. Vehicle Disassembly </b> - Your car will be taken apart and not driveable for sometime. 
          <br><br>• Vehicle taken apart to identify all damage - We make sure that we asses all areas of your car and that there wasn’t any other hidden damage. 
          <br><br>• Customer and insurance company approval - From here the insurance company needs to approve the pricing and information in order for us to move forward. 
          <br><br>• Estimated completion date sent via phone, email or text - We also keep you in the loop and let you know the final price, estimated time schedule, and anything else that might be needed. 
          <br><br>
          <b>4. Vehicle Repair</b> - We can now finally get started on the vehicle repair. Sometimes we have to order specific pieces if we don’t have them in stock. 
          <br><br>• Body, parts and mechanical repairs - We start to repair what we can and make sure that it is being done professionally and accurately. 
          <br><br>• First quality inspection - A manager always over looks the process and approves that the car has been fixed, updated, and is ready for the next step. 
          <br><br>• Confirm delivery date via phone, email or text - We like to keep the insurance company as well as the customer in the loop. So we contact you again to let you know if we are on schedule or if there are any delays. 
          <br><br>
          <b>5. Vehicle Paint</b>- This is an important part of the repair.. This hides that you were in an accident! 
          <br><br>• Body smoothing and sanding - We cant just simply paint on the car, we have to smooth the car, sand it, and find the appropriate color. 
          <br><br>• Primer, paint and clear coat applied - Once those factors are completed we apply the clear coat and paint. This takes sometime for drying. 
          <br><br>• Second quality inspection - Now a manager comes to check the process of the car and the paint job. If all looks good, we move on to the next step and your car will be ready in no time! 
          <br><br>
          <b>6. Vehicle Reassembly </b>- From here we are almost done with the repair of your car! We start to reassmble and put it back together. 
          <br><br>• Vehicle put back together - We are excited for you to see your 'brand' new car! 
          <br><br>• Final delivery date reminder sent via phone, email or text - We send out any final information to you and your insurance company. 
          <br><br>
          <b>7. Quality Assurance</b> - We always double and triple check everything. We want to make sure that it looks perfect and that you are satisfied. 
          <br><br>• Light detailing - We do some light work, if needed. 
            <br><br>• Final Service Advisor quality assurance check - We have our final quality assurance check making sure that it is perfect and

            good to go. 
            <br><br>• Vehicle test-drive as needed 
            <br><br>
            <b>8. On-Time Delivery</b> - We strive to meet our deadlines, sometimes they are ready later or quicker than expected. 
            <br><br>• Pick up your vehicle on time - And return your rental car! 
            <br><br>• Get back to the rhythm of your life - We hope that this process was simple and efficient for you. We hope to see you again in the future, but not anytime too soon!")
     #auto glass repair
     PagePart.create!(  page_name: "auto glass repair",
      text: "On top of all the services that we offer, we also can fix your auto glass. Maybe you didn’t get in a complete wreck and something hit your windshield. We can fix that for you and come to your house, or workplace, to fix it right there on the spot for you. All of our services are pain and hassle free. Just send us the picture and we will provide you with the information needed to move forward.")
     #debt repair
     PagePart.create!(  page_name: "dent repair",
      text: "We insure all of our services. We make sure to take the dent out of your car and make it smooth again. We want it to look as flawless as possible. We strive to make sure that you are satisfied with your new car. We add the paint and sand the dent out. It takes some labor and time simply because we want to assure that it is done efficiently and well. We have high quality staff members who do quality control on every little piece of your car.")
     #uber
     PagePart.create!(  page_name: "uber",
      text: "If you are a uber or lyft driver and get into an accident, we are there for you too! So instead of being out of work and without a car, we repair your car and offer our uber/lyft cars to you for the time being! You bring your damaged vehicle (or we can provide towing services), we give you a car in exchange until your car is fixed! We give you high professional certified uber or lyft approved car! This is something that no other company offers! You can still make money, and go on with your daily routes, while your car is getting fixed!")

     #rent
     PagePart.create!(  page_name: "rent",
      text: "We work very closely with Enterprise. We offer on-site car rental so that you don’t feel like you cant go on with your daily life. This is just another one of our perks! We make sure to take care of you while your car is being repaired. There is nothing worse than being taken advantage after a car wreck. 
      <br><br>
      We want to get your car repaired, and it does take time so we extend this to our customers. We accommodate the rental car based on how long the estimated repair will take.")
    #estimate
    PagePart.create!(  page_name: "estimate",
      text: "If you are in an accident and don’t know what to do, don’t panic we are here to help you. Many will offer services or suggestions, but relax, focus, and make the best decisions! Just take a picture and send it to us! We will give you our offer price. We will take care of it from a to z with the best price and compare our service and price with other body shops! We make sure that our staff is highly trained and up to date on how to evaluate your repair, keep you updated, and give you the best quote possible. They complete this estimate quickly and accurately. 
      <br><br>
      With technology being as big as it is, our computers are loaded with up-to-date information databases! This can be done with any car make or model. This will guide us to make the cost of your car accurately and get it up to running again. 
      <br><br>
      By using computers our estimates are accurate! Once we complete the estimate it is put in a database where you will be able to track it on your smart phone or computer. You simply put your number in the website and you are able to follow your car repair process in very easy steps.")

    #towing
    PagePart.create!(  page_name: "towing",
      text: "We offer on-site towing. We will bring your car into our shop to estimate what it would cost to get it fixed. We understand that when you are in accident you don’t want to deal with driving the car to the shop, or maybe you cant even drive it! We are here to help you, and don’t charge additional for this. We are equipped to help with your towing needs. Just give us a call and we will bring it to our shop as quickly and efficiently as we can. Typically we let us our customers it can range from 30 minutes to an hour before a tow truck arrives. From there if you need further assistance or a rental car we can work out those details!")


    #bumber repair
    PagePart.create!(  page_name: "bumber repair",
      text: "
      You may feel upset, or cringe, when your car needs to get repaired. Many feel these things because they have to rent a car and have to pay huge out of pocket costs. We are convenient for you. We are affordable and also make sure you are settled with the best rental car. 
      <br><br>
      However, we do also offer to fix your bumper at your place for no additional cost! You can feel better about the repair knowing that it will be quick easy and done on the spot. You wont need to waste any time or money and can go on with your daily activities. 
        <br><br>
        Our highly trained staff will set up an appointment with you to come to your place with a date and time of your choice. They will make sure that you are aware of when they are coming as well send a confirmation email and phone call when they are close by.")


    #home
    PagePart.create!(  page_name: "home",
      text: "<b>Fast Auto BodyCenter</b> is online auto program! You can check your repair process as well ask for a repair by taking a picture of your car. All of this can be done right on a smart-phone or desktop computer. Old School? We can do estimates right over the phone too! 
      <br><br>
      Once your repair has been submitted you can check your progress by the phone or computer. It's simply and easy! We put your mind to ease knowing that you can see the progress on your vehicle. We know first hand how nerve wrecking it can be to deal with an auto company to find out about repairs, and still manage to be patient! You can always call us and ask us questions or the status on your car, we don’t oppose to that! With technology being so advance we just want to make sure you have quick easy access to it! 
      <br><br>
      We even offer rental cars for while you are waiting for your car to be repaired! We offer high quality services and insure our employees! Your car is put in good hands with people you can trust. 
      <br><br>

      We are here to help you with your car wreck! Share how we are doing on all of our social media accounts! We are always posting before and after pictures of our customers so that you can see that we provide great quality and customer service.
      <br><br>
      <b>Check your car repair process by your website</b> 
      <br><br>
      By choosing us as your car repair shop we offer up-to-date state of the art technology! You can edit your appointment, or even make one! You can view upcoming appointments and conversations. You can sign up to receive service alerts to your mobile device, or email. You can cancel your appointment. 
      Most importantly you can monitor the cost and the status of your car. We will keep you updated along the whole process.")

  #about
  PagePart.create!(  page_name: "about",
    text: "We are located in East Hollywood Los Angeles! We are brand new to the market but have many years of experience; this isn’t our first redeo! We guarantee we have the best prices, parts, and paint in town. If you are not happy, your service is free. We do also offer warranties on all of our services! 
    <br><br>
    Our goal is to make sure that your experience with us is convenient, efficient, and hassle-free. We hope to meet your expectations for the repair of your car. We make sure to take good care of our customers! We are always looking for feedback and improvement if there is something you don’t like please send us an email! We also offer coming to repair your bumper at your place, such as your home or work! 
    <br><br>
    We offer a wide variety of services for your car. We are a high quality, modern, professional group of people who will repair your car and worry free! 
    We are here to help you with your car wreck! Share how we are doing on all of our social media accounts! We are always posting before and after pictures of our customers so that you can see that we provide great quality and customer service. 
    <br><br>
    • <br>
    Payment options are made to help you! Sometimes an accident can happen without a third party. We work with you to do payment options on something as simple as glass repair, windshield repair, etc. ")



  3.times do |n|

   Ba.create!(  src: "http://placehold.it/350x150/006dcc?text=before",
    descr: "",
    title: "before",
    )
 end
 3.times do |n|

   Ba.create!(  src: "http://placehold.it/350x150/006dcc?text=after",
    descr: "",
    title: "after",
    )
 end
 PagePart.create!(  page_name: "contacts",
  text: "phone: 818-844-7529<br/>
  email: edwineyvazian@gmail.com<br/>
  location: 4557 Fountain Ave.Los Angeles Ca 90029"

  )
 PagePart.create!(  page_name: "appointment_url",
  text: "/point.jpg"
  )
 PagePart.create!(  page_name: "services",
  text: "Our services")
 10.times do |n|
  photo1 = "fdfdfd"
  photo2 = "dffdgfdgdf"
  name  = Faker::Name.name
  car_type = "Car"
  car_year = "1960"
  car_model = "Impala"
  car_manufacturer = "chevrolet"
  email = "example-#{n+1}@r.org"
  phone = Faker::PhoneNumber.phone_number
  status = "0"
  coords = "12. 12 .12"
  Lead.create!(name: name,
   email: email,
   photo1: photo1, photo2: photo2, car_type: car_type,
   car_year: car_year, car_manufacturer: car_manufacturer,
   phone: phone, status: status, car_model:car_model, coords: coords
   )
end
end
end