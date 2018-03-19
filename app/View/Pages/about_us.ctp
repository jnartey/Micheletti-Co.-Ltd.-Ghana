<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('banners'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
		  <!-- <span class="t-heading ls-l" style="top:34%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><?php echo $banner['Banner']['title']; ?></span> -->
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-puzzle-piece fa-1x"></span> <?php echo $banner['Banner']['title']; ?></h3>
	  </div>
	</div>
</div>
<div class="large-12">
	<div class="grid-container padded">
		<ul class="tabs text-center" data-tabs id="about-tabs">
			<?php
				$a = 1;
				foreach($about_us as $data):
					if($a == 1){
						echo '<li class="tabs-title is-active"><a href="#'.$data['PageContent']['slug'].'" aria-selected="true">'.$data['PageContent']['title'].'</a></li>';
					}else{
						echo '<li class="tabs-title"><a href="#'.$data['PageContent']['slug'].'" aria-selected="true">'.$data['PageContent']['title'].'</a></li>';
					}
					
					$a++;
				endforeach;
			?>
		</ul>
		<div class="tabs-content" data-tabs-content="about-tabs">
			<?php
				$b = 1;
				foreach($about_us as $data):
					if($b == 1){
						echo '<div class="tabs-panel is-active" id="'.$data['PageContent']['slug'].'">';
					}else{
						echo '<div class="tabs-panel" id="'.$data['PageContent']['slug'].'">';
					}
					
					if($data['PageContent']['page_style'] == 1){
						if($data['PageContent']['sub_title']){
							if($data['PageContent']['icon']){
								echo '<h4>';
								echo '<span>'.$this->Html->image('pages'.DS.'small'.DS.$data['PageContent']['icon'], array('alt' => 'Micheletti')).'</span>';
								echo '<span>'.$data['PageContent']['sub_title'].'</span>';
								echo '</h4>';
							}else{
								echo '<h4>'.$data['PageContent']['sub_title'].'</h4>';
							}
						}
						
						echo $data['PageContent']['content'];
						
						$children = AppController::getChildren('PageContent', 'category', $data['PageContent']['id']);
					
						if($children){
							foreach($children as $child):
								if($child['PageContent']['icon']){
									echo '<h4>';
									echo '<span>'.$this->Html->image('pages'.DS.'small'.DS.$child['PageContent']['icon'], array('alt' => 'Micheletti')).'</span>';
									echo '<span>'.$child['PageContent']['title'].'</span>';
									echo '</h4>';
								}else{
									echo '<h4>'.$child['PageContent']['title'].'</h4>';
								}
						
								echo $child['PageContent']['content'];
							endforeach;
						}
					}
					
					if($data['PageContent']['page_style'] == 3){
						$children = AppController::getChildren('PageContent', 'category', $data['PageContent']['id']);
						echo '<ul class="gridder text-center">';
						foreach($children as $child):
							echo '<li class="gridder-list" data-griddercontent="#'.$child['PageContent']['slug'].'-'.$b.'">';
							if($child['PageContent']['photo']){
								echo $this->Html->image('pages'.DS.'small'.DS.$child['PageContent']['photo'], array('alt' => 'Micheletti'));
							}else{
								echo $this->Html->image('photo.jpg', array('alt' => 'Micheletti'));
							}
							
							echo '<h6>'.$child['PageContent']['title'].'</h6>';
							echo '<p>'.$child['PageContent']['position'].'</p>';
							echo '</li>';
						endforeach;
						echo '</ul>';
						
						foreach($children as $child):
							echo '<div id="'.$child['PageContent']['slug'].'-'.$b.'" class="gridder-content">';
							echo '<div class="grid-container grid-x">';
							echo '<div class="cell medium-4 profile-image">';
							if($child['PageContent']['photo']){
								echo $this->Html->image('pages'.DS.'large'.DS.$child['PageContent']['photo'], array('alt' => 'Micheletti'));
							}else{
								echo $this->Html->image('photo.jpg', array('alt' => 'Micheletti'));
							}
							echo '</div>';
							echo '<div class="cell medium-8 profile">';
							echo '<h6>'.$child['PageContent']['title'].'</h6>';
							echo '<p class="position">'.$child['PageContent']['position'].'</p>';
							echo $child['PageContent']['content'];
							echo '</div>';
							echo '</div>';
							echo '</div>';
						endforeach;
					}
					
					if($data['PageContent']['page_style'] == 4){
						echo '<div class="cell large-12">';
						echo $data['PageContent']['content'];
						echo '</div>';
						
						$gallery = AppController::getData('Gallery', 'link_id', $data['PageContent']['id']);
						$images = AppController::getChildren('Image', 'gallery_id', $gallery['Gallery']['id']);
						
						if($images){
							echo '<div class="grid-x">';
							foreach($images as $image):
								echo '<a class="medium-4 cell tile-project" href='.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'large'.DS.$image['Image']['img_file'], true).' data-fancybox="'.$data['PageContent']['slug'].'"><div class="inner">';
								echo $this->html->image('photogallery'.DS.'thumb'.DS.'small'.DS.$image['Image']['img_file'], array('alt' => 'Micheletti', 'class'=>'left'));
								//echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
								echo '</div></a>';
							endforeach;
							echo '</div>';
						}
					}
					
					echo '</div>';
					$b++;
				endforeach;
			?>
		</div>
	</div>
</div>
<div class="large-12 content-gray text-center">
	<div class="grid-container">
		<?php
			$i = 1;
			foreach($values as $value):
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
</div>

<?php echo $this->element('footer_misc'); ?>