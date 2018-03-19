<?php if(!$read){ ?>
<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('banners'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
		  <!-- <span class="t-heading ls-l" style="top:34%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><?php echo $banner['Banner']['title']; ?></span> -->
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-picture-o fa-1x"></span> <?php echo $banner['Banner']['title']; ?></h3>
	  </div>
	</div>
</div>
<div class="large-12 projects">
	<div class="grid-container">
		<ul class="tabs text-center" data-deep-link="true" data-update-history="true" data-tabs id="about-tabs">
		  <li class="tabs-title is-active"><a href="#all" aria-selected="true">All</a></li>
	  	  <?php
		  	foreach($categories as $category):
				echo '<li class="tabs-title"><a href="#'.$category['Category']['slug'].'">'.$category['Category']['name'].'</a></li>';
		  	endforeach;
	  	  ?>
		</ul>
		<div class="tabs-content" data-tabs-content="about-tabs">
		  <div class="tabs-panel is-active" id="all">
			  <div class="grid-x">
			  	<?php
					if($projects){
						$i = 1;
						$count_rows = 0;
						$array_keys = array_keys($projects);
						$last_key = end($array_keys);
						foreach($projects as $project):
							
							if($i == 6){
								$i = 1;
							}
							
							if($i%2 == 0 && $i == 2){
								echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$project['PageContent']['slug'].DS.'all', true).'" class="medium-4 cell tile-project"><div class="inner">';
								echo '<div class="overlay"><h5><span>'.$project['PageContent']['title'].'</span></h5></div>';
								echo $this->Html->image('pages'.DS.'box'.DS.$project['PageContent']['page_image'], array('alt' => 'Micheletti'));
								echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
								echo '</div></a>';
							}elseif($i%3 == 0){
								echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$project['PageContent']['slug'].DS.'all', true).'" class="medium-4 cell tile-project"><div class="inner">';
								echo '<div class="overlay"><h5><span>'.$project['PageContent']['title'].'</span></h5></div>';
								echo $this->Html->image('pages'.DS.'portrait'.DS.$project['PageContent']['page_image'], array('alt' => 'Micheletti'));
								echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
								echo '</div></a>';
							}elseif($i%4 == 0  && $i > 2){
								if($project_count > 4){
									echo '<div class="cell large-8">';
									echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$project['PageContent']['slug'].DS.'all', true).'" class="medium-12 cell tile-project force-height"><div class="inner">';
								}else{
									echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$project['PageContent']['slug'].DS.'all', true).'" class="medium-8 cell tile-project force-height"><div class="inner">';
								}
								echo '<div class="overlay"><h5><span>'.$project['PageContent']['title'].'</span></h5></div>';
								echo $this->Html->image('pages'.DS.'landscape'.DS.$project['PageContent']['page_image'], array('alt' => 'Micheletti'));
								echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
								echo '</div></a>';
								if($last_key == $count_rows && $project_count > 4){
									echo '</div>';
								}
							}elseif($i%5 == 0){
								echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$project['PageContent']['slug'].DS.'all', true).'" class="medium-12 cell tile-project"><div class="inner">';
								echo '<div class="overlay"><h5><span>'.$project['PageContent']['title'].'</span></h5></div>';
								echo $this->Html->image('pages'.DS.'landscape'.DS.$project['PageContent']['page_image'], array('alt' => 'Micheletti'));
								echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
								echo '</div></a>';
								if($project_count > 4){
									echo '</div>';
								}
							}else{
								echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$project['PageContent']['slug'].DS.'all', true).'" class="medium-8 cell tile-project"><div class="inner">';
								echo '<div class="overlay"><h5><span>'.$project['PageContent']['title'].'</span></h5></div>';
								echo $this->Html->image('pages'.DS.'landscape'.DS.$project['PageContent']['page_image'], array('alt' => 'Micheletti'));
								echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
								echo '</div></a>';
							}
							
							$i++;
							$count_rows++;
						endforeach;
					}else{
						echo '<p>No projects in this category</p>';
					}
			  	?>
			  </div>
		  </div>
		  <?php
		  	foreach($categories as $category):
				echo '<div class="tabs-panel" id="'.$category['Category']['slug'].'"><div class="grid-x">';
				$children = AppController::getChildren('PageContent', 'category_id', $category['Category']['id']);
				$count = AppController::countRows('PageContent', 'category_id', $category['Category']['id']);
				$j = 1;
				$count_rows_i = 0;
				$array_keys_i = array_keys($children);
				$last_key_i = end($array_keys_i);
				if($children){
					foreach($children as $child):
						if($j == 6){
							$j = 1;
						}
						if($j%2 == 0 && $j == 2){
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$child['PageContent']['slug'].DS.$category['Category']['slug'], true).'" class="medium-4 cell tile-project"><div class="inner">';
							echo '<div class="overlay"><h5><span>'.$child['PageContent']['title'].'</span></h5></div>';
							echo $this->Html->image('pages'.DS.'box'.DS.$child['PageContent']['page_image'], array('alt' => 'Micheletti'));
							echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
							echo '</div></a>';
						}elseif($j%3 == 0){
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$child['PageContent']['slug'].DS.$category['Category']['slug'], true).'" class="medium-4 cell tile-project"><div class="inner">';
							echo '<div class="overlay"><h5><span>'.$child['PageContent']['title'].'</span></h5></div>';
							echo $this->Html->image('pages'.DS.'portrait'.DS.$child['PageContent']['page_image'], array('alt' => 'Micheletti'));
							echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
							echo '</div></a>';
						}elseif($j%4 == 0  && $j > 2){
							if($count > 4){
								echo '<div class="cell large-8">';
								echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$child['PageContent']['slug'].DS.$category['Category']['slug'], true).'" class="medium-12 cell tile-project force-height"><div class="inner">';
							}else{
								echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$child['PageContent']['slug'].DS.$category['Category']['slug'], true).'" class="medium-8 cell tile-project force-height"><div class="inner">';
							}

							echo '<div class="overlay"><h5><span>'.$child['PageContent']['title'].'</span></h5></div>';
							echo $this->Html->image('pages'.DS.'landscape'.DS.$child['PageContent']['page_image'], array('alt' => 'Micheletti'));
							echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
							echo '</div></a>';
							
							if($last_key_i == $count_rows_i && $count > 4){
								echo '</div>';
							}
						}elseif($j%5 == 0){
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$child['PageContent']['slug'].DS.$category['Category']['slug'], true).'" class="medium-12 cell tile-project"><div class="inner">';
							echo '<div class="overlay"><h5><span>'.$child['PageContent']['title'].'</span></h5></div>';
							echo $this->Html->image('pages'.DS.'landscape'.DS.$child['PageContent']['page_image'], array('alt' => 'Micheletti'));
							echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
							echo '</div></a>';
							if($count > 4){
								echo '</div>';
							}
						}else{
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$child['PageContent']['slug'].DS.$category['Category']['slug'], true).'" class="medium-8 cell tile-project"><div class="inner">';
							echo '<div class="overlay"><h5><span>'.$child['PageContent']['title'].'</span></h5></div>';
							echo $this->Html->image('pages'.DS.'landscape'.DS.$child['PageContent']['page_image'], array('alt' => 'Micheletti'));
							echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
							echo '</div></a>';
						}
						
						$j++;
						$count_rows_i++;
					endforeach;
					
				}else{
					echo '<p>No projects in this category</p>';
				}
				echo '</div></div>';
		  	endforeach;
		  ?>
		</div>
	</div>
</div>
<?php }else{ ?>
<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('pages'.DS.'mini'.DS.$project['PageContent']['page_image'], array('alt' => 'Micheletti '.$project['PageContent']['title'], 'class'=>'ls-bg')); ?>
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-briefcase fa-1x"></span> <?php echo $project['PageContent']['title']; ?></h3>
	  </div>
	</div>
	<div class="overlay-banner">
		<div class="grid-container">
			<a href="<?php echo $this->Html->url(DS.'pages'.DS.'projects#'.$cat, true) ?>"><span class="fa fa-angle-left"></span> | View all projects</a>
		</div>
	</div>
</div>		
<div class="large-12 content project-details">
	<div class="grid-container padded-s">
		<div class="grid-x">
			<div class="cell large-12">
				<nav aria-label="You are here:" role="navigation">
				  <ul class="breadcrumbs">
				    <li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'projects#'.$cat, true) ?>">Projects</a></li>
				    <li>
				      <span class="show-for-sr">Current: </span> <?php echo $project['PageContent']['title']; ?>
				    </li>
				  </ul>
				</nav>
			</div>
			<div class="cell large-2">
				<h3>PROJECT <br />OVERVIEW</h3>
			</div>
			
			<div class="cell large-10 padded-s">
				<?php echo '<p>'.$project['PageContent']['summary'].'</p>'; ?>
			</div>
		</div>
	</div>
</div>
<div class="grid-container">
 	<div class="grid-x">
		<?php
			if($images){
				foreach($images as $image):
					echo '<a class="medium-4 cell tile-project" href='.$this->Html->url(DS.'img'.DS.'photogallery'.DS.$image['Image']['img_file'], true).' data-fancybox="'.$project['PageContent']['slug'].'"><div class="inner">';
					echo $this->html->image('photogallery'.DS.'thumb'.DS.'small'.DS.$image['Image']['img_file'], array('alt' => 'Micheletti', 'class'=>'left'));
					//echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
					echo '</div></a>';
				endforeach;
			}
		?>
	</div><br /><br />
</div>
<?php if($project['PageContent']['content']){ ?>
<div class="large-12 content-gray">
	<div class="grid-container padded-s">
		<?php echo $project['PageContent']['content']; ?>
	</div>
</div>
<?php } ?>
<?php if($related){ ?>
<div class="large-12 related-projects">
	<div id="carousel" class="owl-carousel owl-theme">
		<?php
			foreach($related as $rel):
				echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects'.DS.$rel['PageContent']['slug'].DS.$cat, true).'" class="tile-project"><div class="inner">';
				echo '<div class="overlay"><h5>'.$rel['PageContent']['title'].'</h5></div>';
				echo $this->Html->image('pages'.DS.'box'.DS.$rel['PageContent']['page_image'], array('alt' => 'Micheletti'));
				echo '<div class="button-wrap"><div class="button">Explore <span class="fa fa-angle-right"></span></div></div>';
				echo '</div></a>';
			endforeach;
		?>
	</div>
</div>
<?php } ?>
<?php } ?>

<?php echo $this->element('footer_misc'); ?>