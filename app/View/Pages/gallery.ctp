<div class="large-12 columns main-container">
  <?php echo $this->element('head'); ?>
  <div class="large-12 columns banner">
	<div id="full-slider-wrapper">
	  <div id="layerslider-1" style="width: 100%; height:350px;">
		<div class="ls-slide" data-ls="slidedelay:5000;transition2d:5;">
			<?php echo $this->Html->image('banners'.DS.'large'.DS.$banner['Banner']['banner_image'], array('alt' => 'Dan Clad Ministries '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
			<div class="overlay-black cover ls-l" style="width:100% !important;height:100% !important; left:0 !important;"></div>
			<div class="large-12 columns banner-content ls-l" style="top:50%;left:0px !important;width:100%;z-index:999;" data-ls="offsetxin:-50;durationin:2000;delayin:1000;offsetxout:-50;durationout:1000;">
				<div class="row">
					<div class="large-6">
						<?php
							echo '<h3>'.$banner['Banner']['title'].'</h3>';
							echo '<p>'.$banner['Banner']['description'].'</p>';
						?>
					</div>
				</div>
			</div>
		</div>
	  </div>
  	</div>
  </div>
  
  <div class="large-12 columns content-light-blue">
	  <div class="row">
		<?php
			if(!$gallery){ 
		?>
		<div class="large-12 columns">
			<ul class="gallery">
				<?php
					if($galleries){
						foreach($galleries as $gallery):
							//$default = AppController::getFirstChildImage('Image', 'gallery_id', $gallery['Gallery']['id']);
							$images = AppController::getChildren('Image', 'gallery_id', $gallery['Gallery']['id'], 'id', 3);
							if($images){
								echo '<li class="medium-3 columns float-left"><a href="'.$this->Html->url(DS.'pages'.DS.'gallery'.DS.$gallery['Gallery']['slug'], true).'">';
								echo '<figure class="stack stack-randomrot active">';
								foreach($images as $image):
									echo $this->html->image('photogallery'.DS.'thumb'.DS.'small'.DS.$image['Image']['img_file'], array('alt' => 'Dan Clad Ministries'));
								endforeach;
								echo '</figure>';
								if($gallery['Gallery']['name']){
									echo '<span class="gallery-title">';
									echo $gallery['Gallery']['name'];
									echo '</span>';
								}	
							}
							echo '</a></li>';
						endforeach;
					}else{
						echo '<p>No event gallery available</p>';
					}
				?>
			</ul>
			<div class="large-12 columns">
				<div class="pagination text-center">
				<?php
				 	echo $this->Paginator->prev(__('prev', true), array('tag' => 'li',  'class' => 'prev',), __(''), array('tag' => 'li','class' => 'disabled'));
					echo $this->Paginator->numbers(array('separator' => '', 'tag' => 'li', 'currentClass' => 'current', 'currentTag' => 'a'));
					echo $this->Paginator->next(__('next', true), array('tag' => 'li',  'class' => 'next',), __(''), array('tag' => 'li','class' => 'disabled'));
				?>
				</div>
			</div>
		</div>
		<?php
			}else{
		?>
			<div class="large-12 columns">
				<div class="row">
					<div class="large-12 columns crumbs text-center">
						  <?php 
							 
							  echo $this->Html->link(__(('Gallery'), true), array('controller'=> 'pages', 'action'=>'gallery'), array('escape' => false, 'class'=>'d-menu')).'  <span class="fa fa-angle-right"></span> ';
						  	  echo $gallery['Gallery']['name']; ?>
					</div>
					<div class="large-12 columns">
						<?php echo $gallery['Gallery']['description']; ?>
						<div class="large-12 columns gallery-content text-left">
						<?php
							if($gallery){
								echo '<ul class="gallery">';
								foreach($images as $image):
									echo '<li class="medium-3 columns float-left"><a href='.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'large'.DS.$image['Image']['img_file'], true).' data-fancybox="'.$gallery['Gallery']['slug'].'">';
									echo $this->html->image('photogallery'.DS.'thumb'.DS.'small'.DS.$image['Image']['img_file'], array('alt' => 'Dan Clad Ministries', 'class'=>'left'));
									if($image['Image']['name']){
										echo '<span class="gallery-title">';
										echo strlen($image['Image']['name']) >= 23 ? substr($image['Image']['name'], 0, 23) . '...' : $image['Image']['name'];
										echo '</span>';
									}
									echo '</a></li>';
								endforeach;
								echo '</ul>';
							}else{
								echo '<p>No images available</p>';
							}
						?>
						</div>
						<div class="large-12 columns columns">
							<div class="pagination text-center">
							<?php
							 	echo $this->Paginator->prev(__('prev', true), array('tag' => 'li',  'class' => 'prev',), __(''), array('tag' => 'li','class' => 'disabled'));
								echo $this->Paginator->numbers(array('separator' => '', 'tag' => 'li', 'currentClass' => 'current', 'currentTag' => 'a'));
								echo $this->Paginator->next(__('next', true), array('tag' => 'li',  'class' => 'next',), __(''), array('tag' => 'li','class' => 'disabled'));
							?>
							</div>
						</div>
					</div>
				</div>
			</div>
		<?php
			}
		?>
  	  </div>
  </div>
  <?php echo $this->element('footer_misc'); ?>
  </div>
</div>