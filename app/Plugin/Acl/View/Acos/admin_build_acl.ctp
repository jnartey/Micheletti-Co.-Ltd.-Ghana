<div class="row">
	<div class="large-12 columns">
		<div class="module yellow">
			<h2>
				<?php echo $current_page; ?> <a href="#"><?php echo $header; ?></a>
			</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="large-3 columns">
		<?php echo $this->element('admin'.DS.'user_menu_acl'); ?>
	</div>
	<div class="large-9 columns content">
		<?php 
						echo $this->Session->flash();
						echo $this->element('design/header');
						echo $this->element('Acos/links');
		?><?php
		if($run)
		{
			if(count($logs) > 0)
			{
				echo '<div class="separator"></div>';
				echo '<div class="alert-box success">';
				echo __d('acl', 'The following actions ACOs have been created');
				echo '</div>';
				echo '<div class="alert-box standard">';
				echo $this->Html->nestedList($logs);
				echo '</div>';
			}
			else
			{
				echo '<div class="separator"></div>';
				echo '<div class="alert-box standard">';
				echo __d('acl', 'There was no new actions ACOs to create');
				echo '</div>';
			}
		}
		else
		{
			echo '<div class="separator"></div>';
			echo '<div class="alert-box standard">';
			echo __d('acl', 'This page allows you to build missing actions ACOs if any.');
			echo '</div>';
				
			if(count($missing_aco_nodes) > 0)
			{
				echo '<div class="separator"></div>';
				echo '<div class="alert-box alert">' . __d('acl', 'Missing ACOs') . '</div>';
				
				echo '<div class="separator"></div>';
				echo '<div class="alert-box standard">';
				echo $this->Html->nestedList($missing_aco_nodes);
				echo '</div>';
				
				echo '<div class="separator"></div>';
				echo '<div class="alert-box standard">';
				echo __d('acl', 'Clicking the link will not destroy existing actions ACOs.');
				echo '</div>';
				
				echo '<p>';
				echo $this->Html->link($this->Html->image('/acl/img/design/add.png') . ' ' . __d('acl', 'Build'), '/admin/acl/acos/build_acl/run', array('escape' => false, 'class'=>'button small success'));
				echo '</p>';
			}
			else
			{
				echo '<div class="alert-box standard">';
				echo $this->Html->image('/acl/img/design/tick.png') . ' ' . __d('acl', 'There is no ACO node to create');
				echo '</div>';
			}
		}

		echo $this->element('design/footer');
		?>
	</div>
</div>
