$(function(){
	 //form wizard start
	//  var width = $(window).width();
	//  console.log(width);
	//  if(width <900) {
	//  //old hack for background on mobiles remove and use @ media
 //    if($(window).width() <900) {
 //        $('.right_nav').addClass('hidden');
 //        if($('.fill').size() != 0){
 //            //$('.fill')[0].style.backgroundImage = "url('<%=asset_path('slider5.jpg')=%>')";
 //            //$('.fill')[0].style.backgroundSize =" cover";
 //            $('.fill')[1].style.backgroundSize =" 100% 100%";
 //            $('.fill')[1].style.height =" 100%";
 //            $('.fill')[0].style.height =" 100%";
 //        }
 //    }

	//  if(width <330) { $('.logo-sign').addClass('hidden');}
	// };
	//hide menu
	// if(location.search != "") {
	// 	$(".menu_opener").addClass('hidden');
	// }

	var form = $(".new_form"); 
	form.validate({
		errorPlacement: function errorPlacement(error, element) { element.before(error); },
		rules: {

		}
	});
	form.children("div").steps({
		headerTag: "wizard",
		bodyTag: "section",
		transitionEffect: "slideLeft",
		enableFinishButton: 1,
		enablePagination: 1,
		transitionEffectSpeed: 0,
		labels: {
			current: "",
			loading: "Loading ..."
		},
		onStepChanging: function (event, currentIndex, newIndex)
		{
			console.log(currentIndex);
			console.log(newIndex);
			if(newIndex !== 2) {
				$('.check-car').addClass('hidden');
			}
			else {
				$('.check-car').removeClass('hidden');
			}
			 // Allways allow step back to the previous step even if the current step is not valid!
			 if (currentIndex > newIndex)
			 {
			 	return true;
			 }

			 form.validate().settings.ignore = ":disabled,:hidden";


			 var valid = form.valid();
			 if(!valid) {
			 	$('.check-car').addClass('hidden');
			 }
			//build .coords if 2
			if(currentIndex === 2) {
				buildCoords();
			}
			
			return valid;
		},
		onFinishing: function (event, currentIndex)
		{
			form.validate().settings.ignore = ":disabled";

			return form.valid();
		},
		onFinished: function (event, currentIndex)
		{
			$('.email_submit').click();
		}
	});

// remove jovochat button if mobile
if($(window).width() <700) {
 	$('.jivo-iframe-container-bottom').remove()
}
	//not validate when we click on prev link
	var prev = $("a[href='#next']");
	$(document.body).on("click", "a[href='#previous']", function(){
		window.notValidate = 1;
		console.log("prev button clicked");
	})
	$('.actions>ul>li>a').addClass('btn btn-primary');
	$('.vehicle_group>button').click(function(){
		var $this = $(this);
	   	$('.vehicle_group > .btn').removeClass('active');   // Remove any existing active classes
		$this.addClass('active'); // Add the class to the nth element
		$('.vehicle_type').val($this.attr('title'));
	});

	if ($('.steps').size() !=0) {
		$('.new-form-submit').hide()
	}
	
	// $('.car_type').click(function(){
 //    $this = $(this),
	//     src = $this.attr('src'); 
	// $('.car_type').each(function(){
	// 	 src1 = $(this).attr('src');
 // 		 src1 = src1.replace('blue','white'); 
 // 		 $(this).attr('src', src1);
	// })
	// if(src.substring(src.length-9) === 'white.png') { 
	// 	src = src.replace('white','blue'); 
	// 	$this.attr('src',src)} 
	// 	$('.vehicle_type').val($this.attr('alt'));
	// });
//$(".phone").mask("?(999) 999-9999");
    // $('.email_submit').click( function(){
    //   if( !validateEmail($(".email").val() ) ) { 
    //   	alert("wrong email format");
    //    return false;}
   	// });

  // Menu settings
  $('#menuToggle, .menu-close').on('click', function(){
  	$('#menuToggle').toggleClass('active');
  	/*$('body').toggleClass('body-push-toleft');*/
  	$('#theMenu').toggleClass('hidden');
  });
  $('#theMenu').on('mouseleave', function(){$('#theMenu').toggleClass('hidden');
  	$('#theMenu').clearQueue();
  });

  $('.menu_opener').on('click', function(){
  	$('#theMenu').toggleClass('hidden');

  	return false;
  });
  $('.menu_closer').on('click', function(){
  	$('#theMenu').toggleClass('hidden');

  	return false;
  });
  var h = $('.port-click').height();
  $(".middle-wrap").height(h);


  $('.port-click').on ('mouseout',function () {
  	var $this = $(this), height = $this.height(),
  	$wrap = $this.find(".middle-wrap");
  	$wrap.animate({'height':height},200);
  	$wrap.clearQueue() 
  });
  $('.port-click').on ('mouseover',function () {
  	var $this = $(this), height = $this.height(),
  	$wrap = $this.find(".middle-wrap");
  	$wrap.animate({'height':0},200);
  	$wrap.clearQueue();
  });

  $('[data-toggle="tooltip"]').tooltip();

//trash
// var width = $(window).width();	
// if(width > 900) { 
// 	var link = $('.ul_right');
// 	var offset = link.offset();

// 	var left = offset.left + 80;
// 	var right = left + link.outerWidth();
// 	$('.chat_button').css('margin-left',left);
// }


});

function validateEmail(email) {
	var re = /\S+@\S+\.\S+/;
	return re.test(email);
}
function show_modal(i){
	i--;
	var $why =$("#why" + i);
	$why.removeClass('hidden');
	$why.css('z-index',9999);
	$why.modal();
};
function show_ba(x) {
	var $ba =$("#"+x);
	$ba.css('z-index',9999);
	$ba.modal();
}