<?php
class PageContent extends AppModel {
    var $name = 'PageContent';
	var $validate = array(
		'title' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'page_image' => array(
	        'Empty' => array(
	            'check' => false
	        ),
	        'InvalidExt' => array(
	            'message' => "This file extension isn't allowed."
	        )
	    ),
		'icon' => array(
	        'Empty' => array(
	            'check' => false
	        ),
	        'InvalidExt' => array(
	            'message' => "This file extension isn't allowed."
	        )
	    ),
		'file' => array(
	        'Empty' => array(
	            'check' => false
	        ),
	        'InvalidExt' => array(
	            'message' => "This file extension isn't allowed."
	        )
	    ),
		'photo' => array(
	        'Empty' => array(
	            'check' => false
	        ),
	        'InvalidExt' => array(
	            'message' => "This file extension isn't allowed."
	        )
	    )
	);
	
    public $belongsTo = array(
        'Category' => array(
            'className' => 'Category',
            'foreignKey' => 'category_id',
            'conditions' => '',
            'fields' => '',
            'order' => '',
        )
    );
	
	public function beforeSave($options = array()) {
	        if (!empty($this->data[$this->alias]['title']) && empty($this->data[$this->alias]['slug'])) {
	            if (!empty($this->data[$this->alias][$this->primaryKey])) {
	                $this->data[$this->alias]['slug'] = $this->generateSlug($this->data[$this->alias]['title'], $this->data['PageContent'][$this->primaryKey]);
	            } else {
	                $this->data[$this->alias]['slug'] = $this->generateSlug($this->data[$this->alias]['title']);
	            }
	        }

	        return true;
	    }
	
	var $actsAs = array(
	    'MeioUpload.MeioUpload' => array(
	        'page_image' => array(
	            'dir' => 'img{DS}pages',
	            'create_directory' => false,
	            'allowed_mime' => array('image/jpeg', 'image/pjpeg', 'image/png'),
	            'allowed_ext' => array('.jpg', '.jpeg', '.png'),
	            'zoomCrop' => false,  
	           	'thumbnails' => true ,
				'thumbsizes' => array(
					'large' => array('width'=>1440, 'height'=>1018, 'thumbnailQuality' => 100),
					'mini' => array('width'=>1436, 'height'=>350, 'zoomCrop' => true, 'thumbnailQuality' => 100),
					'box' => array('width'=>368, 'height'=>368, 'thumbnailQuality' => 100, 'zoomCrop' => true),
					'portrait' => array('width'=>368, 'height'=>756, 'thumbnailQuality' => 100, 'zoomCrop' => true),
					'landscape' => array('width'=>	748, 'height'=>364, 'thumbnailQuality' => 100, 'zoomCrop' => true),
					'small' => array('width'=>584, 'height'=>280, 'thumbnailQuality' => 100, 'zoomCrop' => true)
				),
				'thumbnailQuality' => 100, 
				'thumbnailDir' => '',
				'removeOriginal' => true,
	            'default' => 'default.jpg'
	        ),
	        'icon' => array(
	            'dir' => 'img{DS}pages',
	            'create_directory' => false,
	            'allowed_mime' => array('image/jpeg', 'image/pjpeg', 'image/png'),
	            'allowed_ext' => array('.jpg', '.jpeg', '.png'),
	            'zoomCrop' => false,  
	           	'thumbnails' => true ,
				'thumbsizes' => array(
					'small'  => array('width'=>101, 'height'=>98, 'thumbnailQuality' => 100),
					'large'  => array('width'=>113, 'height'=>200, 'thumbnailQuality' => 100),
				),
				'thumbnailQuality' => 100, 
				'thumbnailDir' => '',
				'removeOriginal' => true,
	            'default' => 'default.jpg'
	        ),
	        'photo' => array(
	            'dir' => 'img{DS}pages',
	            'create_directory' => false,
	            'allowed_mime' => array('image/jpeg', 'image/pjpeg', 'image/png'),
	            'allowed_ext' => array('.jpg', '.jpeg', '.png'),
	            'zoomCrop' => false,  
	           	'thumbnails' => true ,
				'thumbsizes' => array(
					'small'  => array('width'=>150, 'height'=>150, 'thumbnailQuality' => 100, 'zoomCrop' => true),
					'large'  => array('width'=>800, 'height'=>600, 'thumbnailQuality' => 100),
				),
				'thumbnailQuality' => 100, 
				'thumbnailDir' => '',
				'removeOriginal' => true,
	            'default' => 'default.jpg'
	        ),
			'file' => array(
	            'dir' => 'files{DS}downloads',
	            'create_directory' => false,
	            'allowedMime' => array('application/pdf', 'application/msword', 'application/mspowerpoint', 'application/excel', 'application/rtf', 'application/zip'),
				'allowedExt' => array('.pdf', '.doc', '.ppt', '.xls', '.rtf', '.zip'),
	            'zoomCrop' => false,  
	           	'thumbnails' => false,
	            'default' => 'default.jpg'
	        ),
	    ),
		'Sitemap.Sitemap' => array(
	        'primaryKey' => 'slug', //Default primary key field
	        'loc' => 'buildUrlC', //Default function called that builds a url, passes parameters (Model $Model, $primaryKey)
	        'lastmod' => 'modified', //Default last modified field, can be set to FALSE if no field for this
	        'changefreq' => 'daily', //Default change frequency applied to all model items of this type, can be set to FALSE to pass no value
	        'priority' => '0.9', //Default priority applied to all model items of this type, can be set to FALSE to pass no value
	        'conditions' => array(), //Conditions to limit or control the returned results for the sitemap
	    )
	);
	
	function getContent($id=false) {
		return $this->find('all', array('conditions'=>array('PageContent.id' => $id)));
	}
	
	function getContentByTitle($title) {
		return $this->find('all', array('conditions'=>array('PageContent.title' => $title)));
	}
	
	function getContentCategory($id=false, $limit=0) {
		return $this->find('all', array('conditions'=>array('PageContent.category' => $id), 'limit'=>$limit));
	}
	
	function listSelectContents(){
		return $this->find('list', array('conditions'=>array('PageContent.category' => null), 'fields'=>array('PageContent.id', 'PageContent.title')));
	}
	
	function listSelectContent($id){
		return $this->find('list', array('conditions'=>array('PageContent.id' => $id), 'fields'=>array('PageContent.id', 'PageContent.title')));
	}
	
}
?>