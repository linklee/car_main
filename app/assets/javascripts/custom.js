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
		onStepChanging: function (event, currentIndex, newIndex)
		{
			form.validate().settings.ignore = ":disabled,:hidden";
			return form.valid();
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
	$('.actions>ul>li>a').addClass('btn btn-primary');
	$('.vehicle_group>button').click(function(){
		var $this = $(this);
	   	$('.vehicle_group > .btn').removeClass('active');   // Remove any existing active classes
		$this.addClass('active'); // Add the class to the nth element
		$('.vehicle_type').val($this.attr('title'));
	});
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
$(".phone").mask("?(999) 999-9999");
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
var width = $(window).width();
if(width > 900) { 
	var link = $('.ul_right');
	var offset = link.offset();

	var left = offset.left + 20;
	var right = left + link.outerWidth();
	$('.chat_button').css('margin-left',left);
}

});

function validateEmail(email) {
	var re = /\S+@\S+\.\S+/;
	return re.test(email);
}
function show_modal(i){
	i--;
	var $why =$("#why" + i);
	$why.css('z-index',9999);
	$why.modal();
};
function show_ba(x) {
	var $ba =$("#"+x);
	$ba.css('z-index',9999);
	$ba.modal();
}