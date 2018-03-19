<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
App::uses('AppController', 'Controller');
App::uses('CakeEmail', 'Network/Email');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class PagesController extends AppController {

/**
 * Controller name
 *
 * @var string
 */
	public $name = 'Pages';
	
	public function beforeFilter() {
	    parent::beforeFilter();
		
	    $this->Auth->allow();
		$this->loadModel('Banner');
		$this->loadModel('Event');
		$this->loadModel('News');
		$this->loadModel('PageContent');
		$this->loadModel('Category');
		$mobile_detect = false;
		$tablet_detect = false;
		
		// if($this->RequestHandler->isMobile()) {
// 			$mobile_detect = true;
// 		}
		
		$isMobileOnly = $this->MobileDetect->detect('isMobile');
		
		if($isMobileOnly) {
			$mobile_detect = true;
		}
		
		$isTabletr = $this->MobileDetect->detect('isTablet');
		
		if($isTabletr) {
			$tablet_detect = true;
		}
				
		$this->set(compact('mobile_detect', 'tablet_detect'));
	}

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array();
	
	public function index(){
		$title_for_layout = "Home";
		$banners = $this->Banner->getBannerCategory(1);
		$intro = $this->PageContent->find('first', array('conditions'=>array('PageContent.id'=>1)));
		$this->set(compact('title_for_layout', 'banners', 'intro'));
	}
	
	public function about_us(){
		$title_for_layout = "About Us";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>4)));
		$about_us = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>2, 'NOT'=>array('PageContent.page_style'=>2))));
		$values = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>3, 'PageContent.page_style'=>2), 'order'=>array('PageContent.id'=>'ASC')));
		$this->set(compact('title_for_layout', 'banner', 'about_us', 'values'));
	}
	
	public function what_we_do(){
		$title_for_layout = "What we do";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>5)));
		$content = $this->PageContent->find('first', array('conditions'=>array('PageContent.id'=>22)));
		$this->set(compact('title_for_layout', 'banner', 'content'));
	}
	
	public function projects($id=null, $cat=null){
		$this->loadModel('Gallery');
		$this->loadModel('Image');
		$read = null;
		
		if($id){
			$read = $id;
			$project = $this->PageContent->find('first', array('conditions'=>array('PageContent.slug'=>$id)));
			$related = $this->PageContent->find('all', array('conditions'=>array('PageContent.category_id'=>$project['PageContent']['category_id'], 'NOT'=>array('PageContent.id'=>$project['PageContent']['id']))));
			$title_for_layout = $project['PageContent']['title'];
			
			$gallery = $this->Gallery->find('first', array('conditions'=>array('Gallery.link_id'=>$project['PageContent']['id'])));
			if($gallery){
				$images = $this->Image->find('all', array('conditions'=>array('Image.gallery_id'=>$gallery['Gallery']['id']), 'order'=>array('Image.id' => 'DESC')));
			}
		}else{
			$title_for_layout = "Projects";
			$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>6)));
			$categories = $this->Category->find('all', array('order'=>array('Category.id'=>'ASC')));
			$projects = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>26), 'order'=>array('PageContent.id' => 'DESC')));
			$project_count = $this->PageContent->find('count', array('conditions'=>array('PageContent.category'=>26)));
		}
		
		$this->set(compact('title_for_layout', 'banner', 'categories', 'projects', 'project', 'project_count', 'read', 'cat', 'images', 'related'));
	}
	
	public function careers(){
		$title_for_layout = "Careers";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>7)));
		$content = $this->PageContent->find('first', array('conditions'=>array('PageContent.id'=>27)));
		$this->set(compact('title_for_layout', 'banner', 'content'));
	}
	
	public function news($id = null){
		$title_for_layout = "News";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>8)));
		$read = null;
		
		if($id){
			$news = $this->News->find('first', array('conditions'=>array('News.slug' => $id)));
			$recents = $this->News->find('all', array('conditions'=>array('NOT'=>array('News.archive' => 1)), 'order'=>array('News.created'=>'DESC'), 'limit'=>10));
			$archives = $this->News->find('all', array('conditions'=>array('News.archive' => 1), 'order'=>array('News.created'=>'DESC'), 'limit'=>10));
			$read = $id;
		}else{
			$featured = $this->News->find('all', array('conditions'=>array('News.featured' => 1), 'order'=>array('News.created'=>'DESC'), 'limit'=>3));
			$this->paginate = array('conditions'=>array('NOT'=>array('News.featured' => 1)), 'order'=>array('News.news_date'=>'DESC'), 'limit' => 20);
			$this->Event->recursive = 0;
			$news = $this->paginate('News');
		}
		
		$this->set(compact('title_for_layout', 'banner', 'news', 'read', 'featured', 'recents', 'archives'));
	}
	
	public function gallery($id = null){
		$title_for_layout = "Gallery";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>10)));
		$this->loadModel('Gallery');
		$this->loadModel('Image');
		
		$gallery = null;
		
		if($id){
			$gallery = $this->Gallery->find('first', array('conditions'=>array('Gallery.slug'=>$id)));
			$this->paginate = array('conditions'=>array('Image.gallery_id'=>$gallery['Gallery']['id']), 'order'=>array('Image.id' => 'DESC'), 'limit' => 24);
			$this->Image->recursive = 0;
			$images = $this->paginate('Image');
			
		}else{
			$galleries = $this->Gallery->find('all');
			$this->paginate = array('conditions'=>array(), 'order'=>array('Gallery.id' => 'DESC'), 'limit' => 24);
			$this->Gallery->recursive = 0;
			$galleries = $this->paginate('Gallery');
		}
				
		$this->set(compact('title_for_layout', 'banner', 'galleries', 'gallery', 'images'));
	}
	
	public function contact_us(){
		$title_for_layout = "Contact Us";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>9)));
		$content = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>28)));
		$this->set(compact('title_for_layout', 'content', 'banner'));
	}
	
	public function process(){

		$this->layout = 'blank';

		if(!empty($this->request->data)):
			
		$email = new CakeEmail('smtp');
		if(!empty($this->request->data['Career']['name'])){
			$email->from('info@michelettighana.com');
		}else{
			$email->from('info@michelettighana.com');
		}
		
		if($this->request->data['Career']['file']){
			$filename = WWW_ROOT.DS.'files'.DS.$this->request->data['Career']['file']['name']; 
			move_uploaded_file($this->data['Career']['file']['tmp_name'], $filename);
		}
		
		$email->to('info@michelettighana.com');
		$email->subject('Micheletti Career Form');
		if($this->request->data['Career']['file']){
			$email->attachments($filename);
		}
		$email->replyTo($this->request->data['Career']['email']);
		$email->sender($this->request->data['Career']['email'], 'Woman360');
		$email->emailFormat('html');
		$email->template('career');
		$email->viewVars(array(
					'name' => $this->request->data['Career']['name'],
					'phone' => $this->request->data['Career']['phone'],
	                'email' => $this->request->data['Career']['email'],
					'message' => $this->request->data['Career']['message']
				)
			);

			if($email->send()):
				echo '<div class="callout success">Thank you for contacting Micheletti</div>';
			else:
            	echo '<div class="callout alert">email error</div>';
			endif;
    else:
         $this->flash('Form field cannot be empty<a href="" class="close">&times;</a>', 'default', array('class' => 'alert-box alert'));
	endif;

	}
	
	public function download($file_name = null) {
        $this->layout = 'blank';
		
		// if($this->Session->check('has_read_item.' . $id) == false) {
// 		    $this->PageContent->updateAll(array('PageContent.views'=>'PageContent.views+1'), array('PageContent.id'=>$id));
// 		    $this->Session->write('has_read_item.' . $id, true);
// 		}
		
		
		$file_dir = 'downloads';
		

        if(!$file_name) {
            $this->Session->setFlash('You have not specified a file to download');
            //$this->redirect(array('action' => 'index'));
        }

        $file = $file_name;

        if($file) {
		    $this->response->file(WWW_ROOT .'files' . DS . $file_dir . DS . $file);
		    $this->response->header('Content-Disposition', 'inline');
		    return $this->response;
        } else {
            $this->Session->setFlash('The file you are trying to view does not exist, please try again');
            //$this->redirect(array('action' => 'index'));
        }
    }
}
