<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('banners'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
		  <!-- <span class="t-heading ls-l" style="top:34%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><?php echo $banner['Banner']['title']; ?></span> -->
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-briefcase fa-1x"></span> <?php echo $banner['Banner']['title']; ?></h3>
	  </div>
	</div>
</div>
<div class="large-12 content">
	<div class="grid-container text-center sp">
		<?php
			$i = 1;
			$children = AppController::getChildren('PageContent', 'category', $content['PageContent']['id']);
			foreach($children as $value):
				if($i%2 == 0){
					echo '<div class="bullet-pts blue">';
					echo '<span class="ball"></span><span class="number">'.sprintf("%02d", $i).'<strong>.</strong></span>';
					echo '<h4>'.$value['PageContent']['title'].'</h4>';
					echo '<p>'.$value['PageContent']['summary'].'</p>';
					echo '</div>';
				}elseif($i%3 == 0){
					echo '<div class="bullet-pts yellow">';
					echo '<span class="ball"></span><span class="number">'.sprintf("%02d", $i).'<strong>.</strong></span>';
					echo '<h4>'.$value['PageContent']['title'].'</h4>';
					echo '<p>'.$value['PageContent']['summary'].'</p>';
					echo '</div>';
				}else{
					echo '<div class="bullet-pts red">';
					echo '<span class="ball"></span><span class="number">'.sprintf("%02d", $i).'<strong>.</strong></span>';
					echo '<h4>'.$value['PageContent']['title'].'</h4>';
					echo '<p>'.$value['PageContent']['summary'].'</p>';
					echo '</div>';
				}
				$i++;
			endforeach;
		?>
	</div>
	<div class="grid-container padded">
		<?php
			// $children = AppController::getChildren('PageContent', 'category', $content['PageContent']['id']);
// 			echo '<div class="grid-x align-center service-rack">';
// 			if($children){
// 				foreach($children as $child):
// 					echo '<div class="cell auto service-icon text-center" style="color:'.$child['PageContent']['color'].';">';
// 					echo '<div class="middle icon" style="background:'.$child['PageContent']['color'].';">';
// 					echo $this->Html->image('pages'.DS.$child['PageContent']['icon'], array('alt' => 'Micheletti'));
// 					echo '</div>';
// 					echo '<h6>'.$child['PageContent']['title'].'</h6>';
// 					echo '</div>';
// 				endforeach;
// 			}
// 			echo '</div>';
			echo $content['PageContent']['content'];
		?>
	</div>
</div>
<?php echo $this->element('footer_misc'); ?>