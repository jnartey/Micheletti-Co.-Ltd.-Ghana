<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
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
App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
	
	public $components = array(
        'Acl',
        'Auth' => array(
            'authorize' => array(
                'Actions' => array('actionPath' => 'controllers')
            )
        ),
		'Security',
        'Session',
		'RequestHandler',
		'MobileDetect'
    );
    public $helpers = array('Html', 'Form', 'Session', 'Js');

    public function beforeFilter() {
		$this->Security->csrfExpires = '+1 hour';
		$this->Security->csrfUseOnce = true;
		$this->Security->blackHoleCallback = 'blackhole';
        //Configure AuthComponent
		//$this->Auth->allow('getRole');
        //Configure AuthComponent
		if($this->request->prefix == 'admin') {
			$this->Auth->loginAction = array('controller' => 'users', 'action' => 'admin_login', 'admin' => true);
	        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'admin_login', 'admin' => true);
	        $this->Auth->loginRedirect = array('controller' => 'pages', 'action' => 'index', 'admin' => false);
		}elseif($this->request->prefix == 'client'){
			$this->Auth->loginAction = array('controller' => 'users', 'action' => 'login', 'admin' => false, 'client' => true);
	        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'login', 'admin' => false, 'client' => true);
	        $this->Auth->loginRedirect = array('controller' => 'pages', 'action' => 'about-us', 'admin' => false, 'client' => false);
		}else{
			$this->Auth->loginAction = array('controller' => 'users', 'action' => 'login', 'admin' => false, 'client' => true);
	        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'login', 'admin' => false, 'client' => true);
		}
		$main_page_title = null;
		$page_meta_description = null;
		$page_meta_keywords = null;

		// $message = $this->Session->read('Message');
		// 		$this->Auth->redirectDeniedToController = "pages";
		// 		$this->Auth->redirectDeniedToAction = "denied";
		// 		$this->Auth->authError = __("AUTHERROR", true);
		// 		$this->Auth->actualAuthError = __("You are not allowed to access this page. Please contact administrator", true);
		// 		if(!empty($message) AND isset($message['auth'])) {
		// 		    $authMessage = $message['auth']['message'];
		// 		    if($authMessage==$this->Auth->authError) {
		// 		        $this->Session->setFlash($this->Auth->actualAuthError, $this->Auth->flashElement, array(), 'auth');
		// 		        $this->redirect(array('controller'=>$this->Auth->redirectDeniedToController,'action'=>$this->Auth->redirectDeniedToAction));
		// 		    }
		// 		}
		
		//$this->loadModel('Cart');
		$cart_count = 0;
		
		$allProducts = $this->Session->read('Shop');
		
		//pr($allProducts);
		
		if(count($allProducts) < 1){
			$cart_count = 0;
		}
				
		if($allProducts){
				$cart_count = count($allProducts['OrderItem']);
		}
						
		$this->set(compact('main_page_title', 'page_description', 'page_keywords', 'cart_count'));
    }
	
	public function error()
	{
	    $this->cakeError('accessDenied');
	}//end fail()
	
	public function appError($error) {
	    $this->redirect('/');
	}
	
	public function blackhole($errorType) {

	    $errorMap['auth']   = 'form validation error, or a controller/action mismatch error.';
	    $errorMap['csrf']   = 'CSRF error.';
	    $errorMap['get']    = 'HTTP method restriction failure.';
	    $errorMap['post']   = $errorMap['get'];
	    $errorMap['put']    = $errorMap['get'];
	    $errorMap['delete'] = $errorMap['get'];
	    $errorMap['secure'] = 'SSL method restriction failure.';
	    $errorMap['myMoreValuableErrorType']    = 'My custom and very ' . 
	    'specific reason for the error type.';

	    CakeLog::notice("Request to the '{$this->request->params['action']}' " . 
	"endpoint was blackholed by SecurityComponent due to a {$errorMap[$errorType]}");
	}
	
    public function admin_editable() {

        $model = $this->modelClass;

        $id = trim($this->request->data['pk']);
        $field = trim($this->request->data['name']);
        $value = trim($this->request->data['value']);

        $data[$model]['id'] = $id;
        $data[$model][$field] = $value;
        $this->$model->save($data, false);

        $this->autoRender = false;

    }

	public function getRole($id){
         return ClassRegistry::init('Role')->findById($id);
     }

	public function countRows($model, $field = null, $id = null){
		if($field && $id):
			return ClassRegistry::init($model)->find('count', array('conditions'=>array($model.'.'.$field => $id)));
		else:
			return ClassRegistry::init($model)->find('count');
		endif;
	}

	public function getChildren($model, $parent_field, $parent_id, $sort = null, $limit=null){
		if($sort){
			return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'order'=> array($model.'.'.$sort.' DESC'), 'limit' => $limit));
		}else{
			return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'limit' => $limit));
		}
	}
	
	public function getChildrenAsc($model, $parent_field, $parent_id, $sort = null, $limit=null){
		if($sort){
			return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'order'=> array($model.'.'.$sort.' ASC'), 'limit' => $limit));
		}else{
			return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'limit' => $limit));
		}
	}
	
	public function getSymbols($model, $parent_field, $parent_id, $table_id=null, $condition = null){
		
		if(!$condition){
			if(!$table_id){
				return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id)));
			}else{
				return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'contain'=>array('TableColumn'=>array('conditions'=>array('TableColumn.category'=>$table_id))), 'recursive' => 1));
			}
		}else{
			return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'contain'=>array('TableColumn'=>array('conditions'=>array('TableColumn.category'=>$table_id, 'TableColumn.gl_filter'=>$condition))), 'recursive' => 1));
		}
		
	}
	

	
	public function getFirstChild($model, $parent_field, $parent_id, $sort = null){
		return ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'order'=> $model.'.'.$sort.' DESC'));
	}
	
	public function getCurrentChild($model, $parent_field, $parent_id, $target_field){
		return ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'order'=> $model.'.'.$target_field.' DESC'));
	}
	
	public function getParent($model, $parent_field, $parent_id){
		return ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $parent_id)));
	}	
	
	public function getFirstChildImage($model, $parent_field, $parent_id){
		$result = ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $parent_id, $model.'.default_img'=>1)));
		
		if(!$result){
			$result = ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $parent_id)));
		}
		
		return $result;
	}

	public function checkForGrandChildren($model, $parent_field, $parent_id){
		$check_child = ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $parent_id)));
		$result = false;
		if($check_child){
			$check_grand_child = ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $check_child[''.$model.'']['id'])));
			if($check_grand_child){
				$result = true;
			}
		}
		
		return $result;
	}
	
	public function getChildrenId($model, $parent_field, $parent_id, $limit){
		return ClassRegistry::init($model)->find('all', array('conditions'=>array($model.'.'.$parent_field => $parent_id), 'limit' => $limit));
	}

	public function checkGallery($id){
		return ClassRegistry::init('Gallery')->find('first', array('conditions'=>array('Gallery.link_id' => $id)));
	}
	
	public function getData($model, $parent_field, $id){
		return ClassRegistry::init($model)->find('first', array('conditions'=>array($model.'.'.$parent_field => $id)));
	}
}
