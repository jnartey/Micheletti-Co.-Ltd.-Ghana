<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
<?php 
	$isiPad = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPad');
	$isiPhone = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPhone');

if($isiPad){ ?>
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=0.8, minimum-scale=0.8, maximum-scale=0.8, user-scalable=no" />
<?php }else { ?>
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="HandheldFriendly" content="True" />
<?php } ?>
	<meta name="description" content="The Royal Senchi Hotel and Resort is situated in one of the most beautiful locations in Ghana on the banks of the famous Volta River in the Eastern Region."/>
	<meta name="author" content="The Royal Senchi"/>
	<meta name="keywords" content=""/>
	
	
	<?php echo $this->Html->charset(); ?>
	<title><?php echo "Supercloud | Cloud Services Ghana - ".$title_for_layout; ?></title>
	<?php
		echo $this->Html->meta('icon');
		//echo $this->Html->css('foundation.min.css');
	?>
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
 
	  ga('create', 'UA-97128717-1', 'auto');
	  ga('send', 'pageview');
 
	</script>
	<?php
		echo $this->Html->css('foundation.css');
		echo $this->Html->css('font-awesome.min.css');
		echo $this->Html->css('app.css');
		echo $this->Html->css('admin'.DS.'style.css');
	?>
	
	<?php
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
	<!-- special IE-only canvas fix -->
	<!--[if IE]><script type="text/javascript" src="<?php echo $this->Html->url(DS.'js'.DS.'vendor'.DS.'excanvas.js', true); ?>"></script><![endif]-->
	</script>
</head>
<body class="form">
	<?php 
		echo $this->fetch('content'); 
		echo $this->Html->script('vendor'.DS.'jquery');
		echo $this->Html->script('vendor'.DS.'what-input');
		echo $this->Html->script('vendor'.DS.'foundation');
		echo $this->Html->script('vendor'.DS.'jquery.form');
		
		//echo $this->Html->script('foundation.min');
	?>	
  	<script>
		//<![CDATA[
		//prepare the form when the DOM is ready
		$(document).ready(function() {
		    var options = {
		        target:        '#output-message',   // target element(s) to be updated with server response
		        beforeSubmit:  showRequest,  // pre-submit callback
		        success:       showResponse  // post-submit callback

		        // other available options:
		        //url:       url         // override for form's 'action' attribute
		        //type:      type        // 'get' or 'post', override for form's 'method' attribute
		        //dataType:  null        // 'xml', 'script', or 'json' (expected server response type)
		        //clearForm: true        // clear all form fields after successful submit
		        //resetForm: true        // reset the form after successful submit

		        // $.ajax options can be used here too, for example:
		        //timeout:   3000
		    };

		    //$("#contact-form").validate();
		    // bind form using 'ajaxForm'
		    $('#contact-form').ajaxForm(options);
		});

		// pre-submit callback
		function showRequest(formData, jqForm, options) {
		    // formData is an array; here we use $.param to convert it to a string to display it
		    // but the form plugin does this for you automatically when it submits the data
		    var queryString = $.param(formData);

		    // jqForm is a jQuery object encapsulating the form element.  To access the
		    // DOM element for the form do this:
		    // var formElement = jqForm[0];

			if(confirm('You are about to send the information below to Supercloud. Please confirm... \n\n Name: ' + $("#ContactName").val()
				+ '\n\n Email: ' + $("#ContactEmail").val()
				+ '\n\n Phone: ' + $("#ContactPhone").val()
				+ '\n\n Subject: ' + $("#ContactSubject").val()
				+ '\n\n Message: ' + $("#ContactMessage").val()
			+ '')){
		        return true;
		    }else {
		        // here we could return false to prevent the form from being submitted;
		        // returning anything other than false will allow the form submit to continue
		        return false;
		    }
		}

		// post-submit callback
		function showResponse(responseText, statusText, xhr, $form)  {
		    // for normal html responses, the first argument to the success callback
		    // is the XMLHttpRequest object's responseText property

		    // if the ajaxForm method was passed an Options Object with the dataType
		    // property set to 'xml' then the first argument to the success callback
		    // is the XMLHttpRequest object's responseXML property

		    // if the ajaxForm method was passed an Options Object with the dataType
		    // property set to 'json' then the first argument to the success callback
		    // is the json data object returned by the server

		    //alert('status: ' + statusText + '\n\nresponseText: \n' + responseText +
		      //  '\n\nThe output div should have already been updated with the responseText.');
		      $('#output-message').css('display', 'block');
			  //$("#output-message").html('<br />' + responseText);
		      $('#contact-form').get(0).reset();
		}
		//]]>
		
		$(document).foundation();
	</script>
</body>
</html>