<div class="grid-y medium-grid-frame">
	<?php echo $this->element('head_home'); ?>
	<div id="layerslider" class="fullsize" style="width:100%;height:100%;">
		<?php
			$i=1;
			foreach($banners as $banner):
				echo '<div class="ls-slide" data-ls="slidedelay:6000;">';
				if($i == 1){
					echo '<div class="overlay ls-l" style="width:100% !important;height:100% !important; left:0 !important;" data-ls="static:forever;"></div>';
				}
				echo $this->Html->image('banners'.DS.'large'.DS.$banner['Banner']['banner_image'], array('alt' => 'Micheletti '.$banner['Banner']['title'], 'class'=>'ls-bg'));
				echo '<h3 class="ls-l" style="top:38%;left:19%;width:auto;min-width:145px;white-space:no-wrap;z-index:99;" data-ls="offsetxin:0;durationin:2500;delayin:500;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:left bottom 0;"><a href="'.$this->Html->url(DS.'pages'.DS.$banner['Banner']['url'], true).'">'.$banner['Banner']['title'].'</a></h3>';
				echo '<p class="ls-l" style="top:38%;left:21.5%;white-space: nowrap;z-index:99;margin-top:94px;" data-ls="offsetxin:0;durationin:2600;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotateout:-90;transformoriginout:right top 0;"><a href="'.$this->Html->url(DS.'pages'.DS.$banner['Banner']['url'], true).'">'.$banner['Banner']['url_description'].' <span class="fa fa-long-arrow-right"></span></a></p>';
				echo '</div>';
				$i++;
			endforeach;
		?>
	</div>
	<div class="content-bottom">
		<div class="grid-x">
			<div class="auto cell content-left">
				<?php echo '<p>'.$intro['PageContent']['summary'].'</p>'; ?>
			</div>
			<div class="medium-2 cell content-right">
				<a href="<?php echo $this->Html->url(DS.'pages'.DS.$intro['PageContent']['url'], true); ?>">learn more <span class="fa fa-long-arrow-right"></span></a>
			</div>
			<?php echo $this->element('footer'); ?>
		</div>
	</div>
</div>