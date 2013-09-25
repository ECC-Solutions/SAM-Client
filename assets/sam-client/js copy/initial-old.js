$(function(){
	
	//#side height
	var height = $(window).height();
	$('#side').css('height', height);
	$('#side .whiteBorder').css('height', height);
	
	//navigation icon hover
	$('ul.navigation li a').hover(function(){
		var className = $(this).find('.icons').attr('class');
		var currentClass = className.replace('icons', '');
		var hoverClass = currentClass + '_w';
		$(this).find('.icons').removeClass(currentClass);
		$(this).find('.icons').addClass(hoverClass);
	}, function(){
		var className = $(this).find('.icons').attr('class');
		var currentClass = className.replace('icons', '');
		var hoverClass = currentClass.replace('_w', '');	
		$(this).find('.icons').removeClass(currentClass);
		$(this).find('.icons').addClass(hoverClass);		
	});
	
	//tooltip
	$('ul.navigation li a').hover(function(){
		var name = this.name;
		$(this).append('<span class="tooltip"><span class="title">' + name + '</span></span>').show();
		if(name == 'calls managment'){
			$(this).find('.tooltip').css({'left':'-110%', 'right':'-110%'});
		};if(name == 'Employees'){
			$(this).find('.tooltip').css({'left':'-55%', 'right':'-55%'});
		};if(name == 'Companies'){
			$(this).find('.tooltip').css({'left':'-55%', 'right':'-55%'});
		};if(name == 'Products'){
			$(this).find('.tooltip').css({'left':'-35%', 'right':'-35%'});
		};if(name == 'Resources'){
			$(this).find('.tooltip').css({'left':'-55%', 'right':'-55%'});
		};if(name == 'Account owners'){
			$(this).find('.tooltip').css({'left':'-100%', 'right':'-100%'});
		};if(name == 'Departments'){
			$(this).find('.tooltip').css({'left':'-90%', 'right':'-90%'});			
		};if(name == 'Reports'){
			$(this).find('.tooltip').css({'left':'-30%', 'right':'-30%'});			
		};if(name == 'Managers'){
			$(this).find('.tooltip').css({'left':'-45%', 'right':'-45%'});			
		};
		
	}, function(){
		$(this).find('.tooltip').remove();
	});
	//tooltip arrow
	$('ul.navigation li a').hover(function(){
		$(this).find('.icon').append('<span class="arrow"><img src="<?php echo base_url() . "assets/boffice/images/tooltip_arrow.png"; ?>" alt="" /></span>');
	}, function(){
		$(this).find('.icon .arrow').remove();
	});
	$('ul.notificationBox > li > a').click(function(){
			if($('.notificationList').css('display') == 'none'){
				
				$('.notificationBox').append('<div class="preloading" style="height:25px; border-radius:8px;"><img src="<?php echo base_url() . "assets/boffice/images/tinyPreloader.gif";?>" alt="تحميل" style="margin-top:7px;" /></div>').show();
				var url = "<?php echo base_url() . 'boffice/pull/'; ?>" + "<?php echo $loggedIn; ?>";
				$.post(url,function(data){
					$('.notificationList').css('display', 'block');
					$('.notificationList').html(data).show();
					$(".preloading").remove();
				});			

			}else{
				$('.notificationList').css('display', 'none');
			}			
	});
	
	$('html').click(function(){
		if($('.notificationList').css('display') == 'block'){
			$('.notificationList').css('display', 'none');
		}
	});
});

var preloadingTooltip = '<div class="preloadingToolTip">\
<div class="bottomArrow"></div>\
<div class="preloadingTooltip_box">Please wait while we submitted the data</div>\
</div>';

/*
var PreLoadingSubmit = function(){
	$(this).parent().css('position', 'relative');
	$(this).parent().append('<div class="preloading" style="height:25px; border-radius:8px;"><img src="<?php echo base_url() . "assets/boffice/images/tinyPreloader.gif";?>" alt="تحميل" style="margin-top:7px;" /></div>').show();
	$(this).parent().append(preloadingTooltip);
}
*/

function dataTable(type, arg){
	//$(".PreviewHere").append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif";?>" alt="تحميل" /></div>').show();
	//var url = "<?php echo base_url() . 'boffice/dataTable/'; ?>" + type;
/*
	$.post(url,function(data){
		$('.PreviewHere').html(data).show();
		$(".preloading").remove();
	})
*/
	$.ajax({
		type: 'GET',
		url: "<?php echo base_url() . 'boffice/dataTable/'; ?>" + type + "/" + arg,
		//data: {},//add variables
		beforeSend:function(){
			//this is were the loading image load
			$('.PreviewHere').append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif"; ?>" alt="تحميل" /></div>').show();
		},
		success: function(data){
			//successful request, do somthing with the data
			$('.PreviewHere').html(data).show();
			$(".preloading").remove();
		},
		error: function(){
			//failed request
		},
		datatype: 'html'
	})//ajax				
}
function edit(type, object, name){
	$(".loadDatahere").append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif";?>" alt="تحميل" /></div>').show();
	var url = "<?php echo base_url() . 'boffice/edit/'; ?>" + type + "/" + object;
	$.post(url,function(data){
		$('ul.tabs li').each(function(){
			$(this).find('a.selected').removeClass('selected');
		});
		$('ul.tabs').append("<li><a href='javascript:void(0)' class='selected' title='' onclick='javascript:edit('"+type+"','"+object+"')'><span class='title'>"+name+"</span><span class='removeTab' style='float:right; margin-left:5px; display:none;'><img src='<?php echo base_url() . 'assets/boffice/images/delete.png' ?>' alt='' /></span></a></li>");
		$('.loadDatahere').html(data).show();
		$(".preloading").remove();
	});		
};
var employeeId = '';
var handleReset = function(type, object){
	var url = "<?php echo base_url() . 'boffice/resetPassword/'; ?>" + employeeId;
	var url2 = "<?php echo base_url() . 'boffice/dataTable/employees'; ?>";
	

	$.post(url,function(data){
		$.post(url2,function(data){
			$('.PreviewHere').html(data).show();
			$(".preloading").remove();
		})
	})	

	
	
};

function resetPassword(type, object, arg){

		promptMessage = 'You\'re about to reset the passwrod of <b>' + arg + '</b> account, <br /> password will be changed to the default one of the system <b>\'@ecc_123\'</b> ';
		cancelText = 'cancel';
		proceedText = 'procced with reset';
		$('.PreviewHere').append('\
<div class="overlay_bg"></div>\
<div class="promptBox">\
	<div class="promptBox_content">\
		<h1>Reset The Password</h1>\
		<div class="promptBoxMessageContainer">\
		<div class="promptBox_message"></div>\
		<div class="promptAction clearfix"><span class="gray_light"><a title="" href="javascript:void(0)" onclick="cancel();" class="cancel">cancel</a></span><div class="blue_button"><a title="" href="javascript:void(0)" id="proccedReset"><span class="title">Proceed with reset</span></a></div></div></div>\
</div>');
		$('.promptBox_message').append(promptMessage);
		employeeId = object;
		var submitReset = document.getElementById('proccedReset');
		submitReset.addEventListener('click', handleReset);	
		
}

//prompt box when deleting
var promptHeader = 'Delete Confirmation';

var cancelB = '<span class="gray_light"><a title="" href="javascript:void(0)" onclick="cancel();" class="cancel"></a></span>';
var proccedB = '<div class="blue_button"><a title="" href="javascript:void(0)" id="proccedDelete"><span class="title"></span></a></div>';
var cancelText = '';
var proceedText = '';
var promptMessage = '';
var promptBox = '\
<div class="overlay_bg"></div>\
<div class="promptBox">\
	<div class="promptBox_content">\
		<h1>'+ promptHeader +'</h1>\
		<div class="promptBoxMessageContainer">\
		<div class="promptBox_message"></div>\
		<div class="promptAction clearfix">'+ cancelB + proccedB + '</div></div>\
</div>';
var DeleteMethod = '';
var Deleteobject = '';
var argumentValue = '';
var handleDelete = function(type, object){
	var url = "<?php echo base_url() . 'boffice/delete/'; ?>" + DeleteMethod + "/" + Deleteobject;
	var url2 = "<?php echo base_url() . 'boffice/dataTable/'; ?>" + DeleteMethod;
	
	if(DeleteMethod == 'coContacts'){
		var url2 = "<?php echo base_url() . 'boffice/edit/companies/'; ?>" + argumentValue;
		$.post(url,function(){
			$.post(url2,function(data){
				$('.loadDatahere').html(data).show();
				$(".preloading").remove();
				$(".overlay_bg").remove();
				$(".promptBox").remove();
			});
		})
	}if(DeleteMethod == 'accounts'){
		var url2 = "<?php echo base_url() . 'boffice/edit/companies/'; ?>" + argumentValue;
		$.post(url,function(){
			$.post(url2,function(data){
				$('.loadDatahere').html(data).show();
				$(".preloading").remove();
				$(".overlay_bg").remove();
				$(".promptBox").remove();
			});
		})
	
	}else{
		$.post(url,function(data){
			$.post(url2,function(data){
				$('.PreviewHere').html(data).show();
				$(".preloading").remove();
			})
		})	
	};
	
	
};

function removeRow(type, object, arg){
	if(type == 'employees'){
	
		promptMessage = 'You\'re about to delete this employee from the system';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);	

	}if(type == 'coContacts'){

		promptMessage = 'You\'re about to delete this employee from the company contact list';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		argumentValue = arg;

		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);	


	}if(type == 'notifications'){

		promptMessage = 'You\'re about to delete this notice from the system';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);	

	}if(type == 'calls'){

		promptMessage = 'You\'re about to delete this call from the system';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);	



	}if(type == 'products'){
		promptMessage = 'You\'re about to delete this product from the system';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);
	}if(type == 'resources'){

		promptMessage = 'You\'re about to delete this file from the system';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);

	}if(type == 'accounts'){
	
		promptMessage = 'You\'re about to delete this account from the system';
		cancelText = 'cancel';
		proceedText = 'procced with delete';
		$('.PreviewHere').append(promptBox);
		$('.promptBox_message').append(promptMessage);
		$('.cancel').append(cancelText);
		$('#proccedDelete .title').append(proceedText);
		DeleteMethod = type;
		Deleteobject = object;
		argumentValue = arg;
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);

	}if(type == 'companies'){	

		if(arg >= '1'){
			promptMessage = 'You can\'t delete this company, '+ arg +' accounts are registered, remove them first ';		
			cancelText = 'ok';
			$('.PreviewHere').append(promptBox);
			$('.promptBox_message').append(promptMessage);
			$('#proccedDelete').parent().remove();
		}else{
			promptMessage = 'You\'re about to delete this company from the system';	
			cancelText = 'cancel';
			proceedText = 'procced with delete';
			$('.PreviewHere').append(promptBox);
			$('.promptBox_message').append(promptMessage);			
			$('#proccedDelete .title').append(proceedText);			
		}
			
		$('.cancel').append(cancelText);
		
		DeleteMethod = type;
		Deleteobject = object;
		
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);					
			
			
	}if(type == 'departments'){
		if(arg >= '1'){
			promptMessage = 'You can\'t delete this department, '+ arg +' employees are registered, remove them first ';		
			cancelText = 'ok';
			$('.PreviewHere').append(promptBox);
			$('.promptBox_message').append(promptMessage);
			$('#proccedDelete').parent().remove();
		}else{
			promptMessage = 'You\'re about to delete this department from the system';	
			cancelText = 'cancel';
			proceedText = 'procced with delete';
			$('.PreviewHere').append(promptBox);
			$('.promptBox_message').append(promptMessage);			
			$('#proccedDelete .title').append(proceedText);			
		}
		
		$('.cancel').append(cancelText);
		
		DeleteMethod = type;
		Deleteobject = object;
		
		var submit = document.getElementById('proccedDelete');
		submit.addEventListener('click', handleDelete);				
	}			
}
function insert(type){
	$(".loadDatahere").append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif";?>" alt="تحميل" /></div>').show();
	var url = "<?php echo base_url() . 'boffice/insert/'; ?>" + type;
	$.post(url,function(data){
		$('.loadDatahere').html(data).show();
		$(".preloading").remove();
	})				
}
function callDo(action){
	if(action == 'yes'){
		$('.blue_button').remove();
		$('.actionHere').append('<div class="dimmed_blue_button">Submit this Call</div>');
	};
	if(action == 'no'){
		$('.actionHere').append('<div class="blue_button"><button type="submit" id="submitCall">Submit this Call</button></div>');
		$('.dimmed_blue_button').remove();
	};
	
}	
function exportReport(id){
	var url = '<?php echo base_url() . "boffice/reports/"; ?>' + id;											
	$.post(url, function(data){
		$('.exportHere').html(data).show();
	});
	
}
function exitPop(id){
	$('.overlay_bg').remove();
	$('.overlay').remove();
	var url = "<?php echo base_url() . 'boffice/attachedFiles/'; ?>" + id;
	$.post(url,function(data){
		$('.FilesHere').html(data).show();
	})			
	
}
function UploadFiles(company, call, id){
	$(".updateHere").append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif";?>" alt="تحميل" /></div>').show();
	var url = "<?php echo base_url() . 'boffice/uploadFiles/'; ?>" + company + "/" + call + "/" + id;
	$.post(url,function(data){
		$('.updateHere').html(data).show();
		$(".preloading").remove();
	})				

}
function AttachFiles(company, call, id){
	$(".updateHere").append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif";?>" alt="تحميل" /></div>').show();
	var url = "<?php echo base_url() . 'boffice/callFilesAfterSelected/'; ?>" + company + "/" + call + "/" + id;
	$.post(url,function(data){
		$('.updateHere').html(data).show();
		$(".preloading").remove();
	})				

}
function EditCall(id){
	$('.PreviewHere').append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif";?>" alt="تحميل" /></div>').show();
	var url = "<?php echo base_url() . 'boffice/editCall/'; ?>" + id ;
	
	$.post(url, function(data){
		$('.PreviewHere').append(data).show();
		$('.preloading').remove();
	});
}
function cancel(){
	$('.overlay_bg').remove();
	$('.promptBox').remove();									
}
function proccedEdit(){
	//span.edithere
	$(this).parent().css('display', 'none');
	//$(this).parent().html(eval(current));
	$(this).parent().siblings('.hidden').append(eval(current));	
	$('.overlay_bg').remove();
	$('.promptBox').remove();									
}
function removeNotice(){
	$('.noticeBox').remove();
}
