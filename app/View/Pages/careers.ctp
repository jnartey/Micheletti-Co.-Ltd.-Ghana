<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('banners'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
		  <!-- <span class="t-heading ls-l" style="top:34%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><?php echo $banner['Banner']['title']; ?></span> -->
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-user fa-1x"></span> <?php echo $banner['Banner']['title']; ?></h3>
	  </div>
	</div>
</div>
<div class="large-12 content">
	<div class="grid-container padded">
		<div class="grid-x">
			<?php			
				$children = AppController::getChildren('PageContent', 'category', $content['PageContent']['id']);
				echo '<br />';
				if($children){
					foreach($children as $child):
						echo '<div class="large-12 service">';
						echo '<h5>'.$child['PageContent']['title'].'</h5>';
						echo $child['PageContent']['content'];
						echo '</div>';
					endforeach;
				}else{
					echo '<p>No vacancy</p>';
				}
			?>
		</div>
	</div>
</div>
<div class="large-12 content-yellow">
	<div class="grid-container padded">
		<div class="large-12 form-item">
			<?php echo '<h6>'.$content['PageContent']['summary'].'</h6><br />'; ?>
		</div>
		<div id="output-message"></div>
		<?php echo $this->Form->create('Career', array('url' => array('controller' => 'pages', 'action' => 'process'), 'id' => 'contact-form', 'type' => 'file', 'data-abide', 'novalidate')); ?>
			<div class="grid-x align-middle">
				<div class="cell large-12 form-item">
					<?php echo $this->Form->input('name', array('label'=>false, 'placeholder'=>'Name', 'div'=>false, 'required', 'pattern'=>'text')); ?>
				</div>
				<div class="cell large-12 form-item">
					<?php echo $this->Form->input('email', array('label'=>false, 'placeholder'=>'Email', 'div'=>false, 'required', 'pattern'=>'email')); ?>
				</div>
				<div class="cell large-6 form-item">
					<?php echo $this->Form->input('phone', array('label'=>false, 'placeholder'=>'Phone', 'div'=>false, 'required', 'pattern'=>'number')); ?>
				</div>
				<div class="cell large-6 form-item">
					<?php echo $this->Form->input('file', array('type'=>'file', 'label'=>false, 'required', 'class'=>'')); ?>
				</div>
				<div class="cell large-12 form-item">
					<?php echo $this->Form->textarea('message', array('label'=>false, 'placeholder'=>'Message', 'div'=>false, 'required')); ?>
				</div>
				<div class="cell large-12 form-item text-right">
					<input type="submit" id="submit" class="button" value="Send" />
				</div>
			</div>
		</form>
		<div class="large-12 disclaimer">
			<?php
				echo $content['PageContent']['content'];
			?>
		</div>
	</div>
</div>
<?php echo $this->element('footer_misc'); ?>
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

		if(confirm('You are about to send the information below to Micheletti. Please confirm... \n\n Name: ' + $("#CareerName").val()
			+ '\n\n Email: ' + $("#CareerEmail").val()
			+ '\n\n Phone: ' + $("#CareerPhone").val()
			+ '\n\n Message: ' + $("#CareerMessage").val()
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
</script>