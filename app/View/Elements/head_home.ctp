<div class="header">
	<div class="grid-container">
		<div class="grid-x">
			<a href="<?php echo $this->Html->url(DS, true); ?>" class="small-3 cell logo">
				<?php echo $this->Html->image('logo.png', array('alt' => 'Micheletti Logo')); ?>
			</a>
			<div class="auto cell">
				<div class="title-bar float-right" data-responsive-toggle="micheletti-menu" data-hide-for="medium">
				  <button class="menu-icon" type="button" data-toggle="micheletti-menu"></button>
				  <div class="title-bar-title"></div>
				</div>

				<div class="top-bar" id="micheletti-menu">
				  <div class="top-bar-left">
				    <ul class="dropdown menu" data-dropdown-menu>
						<li <?php if($title_for_layout === "Home"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-home"></span> <span>Home</span>'), true), array('controller'=> 'pages', 'action'=>'index'), array('escape' => false)); ?>
						</li>
						<li <?php if($title_for_layout === "About Us"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-puzzle-piece"></span> <span>About Us</span>'), true), array('controller'=> 'pages', 'action'=>'about-us'), array('escape' => false)); ?>
						</li>
						<li <?php if($title_for_layout === "What we do"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-briefcase"></span> <span>What we do</span>'), true), array('controller'=> 'pages', 'action'=>'what-we-do'), array('escape' => false)); ?>
						</li>
						<li <?php if($title_for_layout === "Projects"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-picture-o"></span> <span>Projects</span>'), true), array('controller'=> 'pages', 'action'=>'projects'), array('escape' => false)); ?>
						</li>
						<li <?php if($title_for_layout === "Careers"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-user"></span> <span>Careers</span>'), true), array('controller'=> 'pages', 'action'=>'careers'), array('escape' => false)); ?>
						</li>
						<li <?php if($title_for_layout === "News"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-newspaper-o"></span> <span>News</span>'), true), array('controller'=> 'pages', 'action'=>'news'), array('escape' => false)); ?>
						</li>
						<li <?php if($title_for_layout === "Contact Us"){ echo "class='active'"; } ?>>
							<?php echo $this->Html->link(__(('<span class="fa fa-envelope-o"></span> <span>Contact Us</span>'), true), array('controller'=> 'pages', 'action'=>'contact-us'), array('escape' => false)); ?>
						</li>
					</ul>
				</div>
			   </div>
			</div>
		</div>
	</div>
</div>