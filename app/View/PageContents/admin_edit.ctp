<script>
	$(function() {
		//datepicker
		$('.publish-date').datepick({ 
		    yearRange: '2000:2050',
			dateFormat: 'yyyy-mm-dd',
			showTrigger: '#calImg'});
	});
</script>
<div class="row">
	<div class="large-12 columns">
		<div class="module yellow">
			<h2>
				<?php echo $current_page.' | '. strip_tags($page['PageContent']['title']); ?> <a href="#"><?php echo $header; ?></a>
			</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="large-2 columns">
		<?php echo $this->element('admin'.DS.'page_menu'); ?>
	</div>
	<div class="large-10 columns content">
		<?php 
			echo $this->Session->flash(); 
			echo '<div class="large-12 columns">';
				if($page['PageContent']['category']):
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'pageContents', 'action'=>'view', $page['PageContent']['category'], 'admin' => true), array('escape' => false, 'class'=>'button small primary right')); 
				else:
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'pageContents', 'action'=>'index', 'admin' => true), array('escape' => false, 'class'=>'button small primary right'));
				endif;
			echo '</div>';
			echo '<div class="large-12 columns">';
				echo $this->Form->create('PageContent', array('type' => 'file'));
				
				if($page['PageContent']['category'] == 0){
					echo "<p><label>Publish</label>";
					echo $this->Form->checkbox('publish', array('value' => 1));
					echo "</p>";
					
					// $options = array(
// 						'1' => 'Home',
// 			        	'2' => 'About Us',
// 			        	'3' => 'What we do',
// 						'4' => 'Projects',
// 						'5' => 'Careers',
// 						'6' => 'News',
// 						'7' => 'Contact Us',
// 			        );
//
// 			        echo $this->Form->input('page_type', array(
// 			        	'type'    => 'select',
// 			        	'options' => $options
// 					));
// 					echo '<br />';
					echo $this->Form->input('title', array('placeholder'=>'Title'));
					
					if($page['PageContent']['page_type'] != 3){
						echo $this->Form->input('summary', array('placeholder'=>'Introduction'));
					}
					
					if($page['PageContent']['page_type'] == 3 || $page['PageContent']['page_type'] == 5){
						echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
						echo '<br />';
					}
					
					echo '<br />';
					echo $this->Form->hidden('gallery', array('value' => 0));
				}else{
					if($page['PageContent']['page_type'] == 1){
							
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->input('summary', array('placeholder'=>'Introduction'));
						echo '<br />';
						echo $this->Form->input('url', array('placeholder'=>'URL eg. about-us'));
						echo '<br />';
						
						echo $this->Form->hidden('gallery', array('value' => 0));
					}
					
					if($page['PageContent']['page_type'] == 2){
						
						if($page['PageContent']['page_style'] == 1 && $page['PageContent']['parent'] != 1){
							$options_style = array(
								'1' => 'Plain',
					        	'3' => 'Team',
								'4' => 'Resources'
					        );

					        echo $this->Form->input('page_style', array(
					        	'type'    => 'select',
					        	'options' => $options_style					        
							));
							echo '<br />';
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo $this->Form->input('icon', array('type'=>'file', 'label'=>'Title Icon'));
							echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
							echo '<br />';
						}elseif($page['PageContent']['page_style'] == 2 && $page['PageContent']['parent'] != 1){
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo $this->Form->textarea('summary', array('label'=>false, 'placeholder'=>'Add content'));
							echo '<br />';
						}elseif($page['PageContent']['page_style'] == 3 && $page['PageContent']['parent'] != 1){
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo $this->Form->input('position', array('placeholder'=>'Job Position'));
							echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
							echo '<br />';
							echo $this->Form->input('photo', array('type'=>'file', 'label'=>'Photo'));
							echo $this->Form->hidden('gallery', array('value' => 0));
						}else{
							$options_style = array(
								'1' => 'Plain',
					        	// '2' => 'Timeline',
					        	'3' => 'Team',
								'4' => 'Resources'
					        );

					        echo $this->Form->input('page_style', array(
					        	'type'    => 'select',
					        	'options' => $options_style					        
							));
							echo '<br />';
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo $this->Form->hidden('gallery', array('value' => 0));
							echo $this->Form->hidden('add_content', array('value' => 1));
							echo '<div id="type-iv">';
							echo "<p><label>Gallery</label>";
							echo $this->Form->checkbox('gallery', array('value' => 1));
							echo "</p>";
							echo '</div>';
							echo '<div id="type-i">';
							echo $this->Form->input('sub_title', array('placeholder'=>'Sub Title'));
							echo $this->Form->input('icon', array('type'=>'file', 'label'=>'Title Icon'));
							echo '</div>';
							echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
							echo '<br />';
						}
					}
					
					if($page['PageContent']['page_type'] == 3){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->input('icon', array('type'=>'file', 'label'=>'Icon'));
						echo $this->Form->input('summary', array('placeholder'=>'Text'));
						echo '<br />';
						//echo $this->Form->input('color', array('label'=>'Color code (hint:#ffffff)'));
						echo $this->Form->hidden('gallery', array('value' => 0));
					}
					
					if($page['PageContent']['page_type'] == 4){
						echo $this->Form->input('category_id');
						echo '<br />';
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->input('summary', array('placeholder'=>'Overview'));
						echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
						echo '<br />';
						echo $this->Form->input('page_image', array('type'=>'file', 'label'=>'Image'));
						echo $this->Form->hidden('gallery', array('value' => 1));
					}
					
					if($page['PageContent']['page_type'] == 5){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
						echo '<br />';
					}
					
					if($page['PageContent']['page_type'] == 7){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
						echo '<br />';
					}
				}
				echo '<div class="large-12 columns">';				
				echo $this->Form->end('Update');
				echo '</div>';
			?>
		</div>
	</div>
</div>
<script>
 $(document).ready(function() {
	 $('#type-i').hide();
	 $('#type-ii').hide();
	 $('#type-iii').hide();
	 $('#type-iv').hide();
	 
	 var selected_value = $('#PageContentPageStyle').val();
	 
	 if(selected_value == '1'){
		 $('#type-i').show();
		 $('#type-ii').hide();
		 $('#type-iii').hide();
		 $('#type-iv').hide();
	 }
	 
	 if(selected_value == '2'){
		 $('#type-i').show();
		 $('#type-ii').show();
		 $('#type-iii').hide();
		 $('#type-iv').hide();
	 }
	 
	 if(selected_value == '3'){
		 $('#type-i').hide();
		 $('#type-ii').hide();
		 $('#type-iii').hide();
		 $('#type-iv').hide();
	 }
	 
	 if(selected_value == '4'){
		 $('#type-i').hide();
		 $('#type-ii').hide();
		 $('#type-iii').hide();
		 $('#type-iv').show();
	 }
	 
	 $('#PageContentPageStyle').on('change', function() {
		 var selected_value = $(this).val();
		 
		 if(selected_value == '1'){
			 $('#type-i').show();
			 $('#type-ii').hide();
			 $('#type-iii').hide();
			 $('#type-iv').hide();
		 }
	 
		 if(selected_value == '2'){
			 $('#type-i').hide();
			 $('#type-ii').show();
			 $('#type-iii').hide();
			 $('#type-iv').hide();
		 }
	 
		 if(selected_value == '3'){
			 $('#type-i').hide();
			 $('#type-ii').hide();
			 $('#type-iii').show();
			 $('#type-iv').hide();
		 }
		 
		 if(selected_value == '4'){
			 $('#type-i').hide();
			 $('#type-ii').hide();
			 $('#type-iii').hide();
			 $('#type-iv').show();
		 }
	 });
 });
 </script>