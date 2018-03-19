<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('banners'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
		  <!-- <span class="t-heading ls-l" style="top:34%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><?php echo $banner['Banner']['title']; ?></span> -->
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-envelope-o fa-1x"></span> <?php echo $banner['Banner']['title']; ?></h3>
	  </div>
	</div>
</div>
<div class="large-12 content-dark-gray contact">
	<div class="grid-container padded">
		<div class="grid-x align-justify">
			<?php
				foreach($content as $data):
					echo '<div class="cell medium-4">';
					echo $data['PageContent']['content'];
					echo '</div>';
				endforeach;
			?>
		</div>
	</div>
</div>

<div class="large-12 map">
	<div id="map" style="height:450px;"></div>
	<script type="text/javascript">
	    function initMap() {
	        var map = new google.maps.Map(document.getElementById('map'), {
	            zoom: 16,
	            scrollwheel: false,
	            navigationControl: true,
	            mapTypeControl: false,
	            scaleControl: false,
	            draggable: true,
	            center: {lat: 5.716462, lng: -0.181986}
	        });

	        //var image = '';
	        var beachMarker = new google.maps.Marker({
	            position: {lat: 5.716462, lng: -0.181986},
	            map: map,
	            //icon: image
	        });
	    }
	</script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyA8SexfNmo7iv6yAu6ZZc0NLMFdkCrzOEY&callback=initMap"></script>
</div>

<?php echo $this->element('footer_misc'); ?>