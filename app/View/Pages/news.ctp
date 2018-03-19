<div class="top">
	<?php echo $this->element('head'); ?>
	<div id="layerslider-i" style="width:100%;height:350px; max-height:350px;">
	  <div class="ls-slide">
		  <div class="overlay-b ls-l" style="width:100% !important;height:350px !important; left:0 !important;"></div>
		  <?php echo $this->Html->image('banners'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg')); ?>
		  <!-- <span class="t-heading ls-l" style="top:34%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><?php echo $banner['Banner']['title']; ?></span> -->
		  <h3 class="ls-l" style="top:50%;width:100%;white-space: nowrap;z-index:99;text-align:center" data-ls="offsetxin:0;durationin:2500;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><span class="fa fa-newspaper-o fa-1x"></span> <?php echo $banner['Banner']['title']; ?></h3>
	  </div>
	</div>
</div>
<div class="large-12 content">
	<div class="grid-container padded">
		<?php
			if(!$read){
				if($featured){
					echo '<div class="grid-x">';
					foreach($featured as $feature):
						echo '<div class="cell small-4 latest-news">';
						if($feature['News']['image']){
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$feature['News']['slug'], true).'">'.$this->Html->image('news'.DS.'thumb'.DS.'small'.DS.$feature['News']['image'], array('alt' => 'Micheletti')).'</a>';
						}else{
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$feature['News']['slug'], true).'" class="blank"></a>';
						}
					
						echo '<h6>'.$feature['News']['title'].'</h6>';
						echo '<div class="large-12 extra text-justify">';
						echo '<span class="date">'.$feature['News']['created'].'</span>';
						echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$feature['News']['slug'], true).'">read more</a>';
						echo '</div>';
						echo '</div>';
					endforeach;
					echo '</div>';
				}
				
				if($news){
					echo '<div class="grid-x">';
					foreach($news as $data):
						echo '<div class="large-12 news"><div class="media-object">';
						echo '<div class="media-object-section middle icon">';
						if($data['News']['image']){
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$data['News']['slug'], true).'">'.$this->Html->image('news'.DS.'thumb'.DS.'small'.DS.$data['News']['image'], array('alt' => 'Micheletti')).'</a>';
						}else{
							echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$data['News']['slug'], true).'" class="blank-s"></a>';
						}
						echo '</div>';
						echo '<div class="media-object-section">';
						echo '<p>'.$data['News']['summary'].'</p>';
						echo '<div class="large-12 extra text-right">';
						echo '<span class="date">'.$data['News']['created'].'</span>';
						echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$data['News']['slug'], true).'">read more</a>';
						echo '</div>';
						echo '</div>';
						echo '</div></div>';
					endforeach;
			?>
				<div class="large-12 columns">
					<div class="pagination right">
					<?php
					 	echo $this->Paginator->prev(__('prev', true), array('tag' => 'li',  'class' => 'prev',), __(''), array('tag' => 'li','class' => 'disabled'));
						echo $this->Paginator->numbers(array('separator' => '', 'tag' => 'li', 'currentClass' => 'current', 'currentTag' => 'a'));
						echo $this->Paginator->next(__('next', true), array('tag' => 'li',  'class' => 'next',), __(''), array('tag' => 'li','class' => 'disabled'));
					?>
					</div>
				</div>
			<?php
					echo '</div>';
				}elseif(!$featured && !$news){
					echo '<p>No News</p>';
				}
			}else{ ?>
				<div class="grid-container">
					<div class="grid-x">
						<div class="cell large-12">
							<nav aria-label="You are here:" role="navigation">
							  <ul class="breadcrumbs">
							    <li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'news', true) ?>">News</a></li>
							    <li>
							      <span class="show-for-sr">Current: </span> <?php echo $news['News']['title']; ?>
							    </li>
							  </ul>
							</nav>
						</div>
						<div class="cell large-8 news-details">
							<?php
								echo '<div class="cell large-12">';
								echo '<h4>'.$news['News']['title'].'</h4>';
								echo '<span class="date">'.$news['News']['created'].'</span><br /><br />';
								echo '</div>';
		  						if($news['News']['image']){
		  							echo '<span class="news-details-img">'.$this->Html->image('news'.DS.'thumb'.DS.'large'.DS.$news['News']['image'], array('alt' => 'Micheletti')).'</span>';
		  						}
								echo $news['News']['story'];
							?>
						</div>
						<div class="cell large-4 latest-arch">
							<ul class="tabs text-center" data-tabs id="news-tabs">
							  <li class="tabs-title is-active"><a href="#recent" aria-selected="true">Recent</a></li>
							  <li class="tabs-title"><a href="#archived">Archived</a></li>
							</ul>
							<div class="tabs-content" data-tabs-content="news-tabs">
							  <div class="tabs-panel is-active" id="recent">
								  <?php
									  if($recents){
								  		  foreach($recents as $recent):
											  echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$recent['News']['slug'], true).'" class="media-object">';
											  echo '<div class="media-object-section middle icon">';
						  						if($recent['News']['image']){
						  							echo $this->Html->image('news'.DS.'thumb'.DS.'small'.DS.$recent['News']['image'], array('alt' => 'Micheletti'));
						  						}else{
						  							echo '<div class="blank-sh"></div>';
						  						}
											  echo '</div>';
											  echo '<div class="media-object-section">';
											  echo '<p>'.$recent['News']['title'].'</p>';
											  echo '</div>';
											  echo '</a>';
										  endforeach;
									  }else{
										  echo '<p>No recent news</p>';
									  }
								  ?>
							  </div>
							  <div class="tabs-panel" id="archived">
								  <?php
									  if($archives){
								  		  foreach($archives as $archive):
											  echo '<a href="'.$this->Html->url(DS.'pages'.DS.'news'.DS.$archive['News']['slug'], true).'" class="media-object">';
											  echo '<div class="media-object-section middle icon">';
						  						if($archive['News']['image']){
						  							echo $this->Html->image('news'.DS.'thumb'.DS.'small'.DS.$archive['News']['image'], array('alt' => 'Micheletti'));
						  						}else{
						  							echo '<div class="blank-sh"></div>';
						  						}
											  echo '</div>';
											  echo '<div class="media-object-section">';
											  echo '<p>'.$archive['News']['title'].'</p>';
											  echo '</div>';
											  echo '</a>';
										  endforeach;
									  }else{
										  echo '<p>No archived news</p>';
									  }
								  ?>
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