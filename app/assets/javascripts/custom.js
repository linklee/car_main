$(function(){
	 //form wizard start
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
		$('.vehicle_type').val($this.html());
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
    $(".phone").mask("(999) 999-9999");
    // $('.email_submit').click( function(){
    //   if( !validateEmail($(".email").val() ) ) { 
    //   	alert("wrong email format");
    //    return false;}
   	// });

  

 
});

function validateEmail(email) {
 	var re = /\S+@\S+\.\S+/;
    return re.test(email);
}