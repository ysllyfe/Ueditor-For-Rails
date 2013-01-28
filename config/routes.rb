UeditorForRails::Application.routes.draw do
	get 'sn' => 'welcome#sn'
	get 'change' => 'welcome#change'
	get 'demo' => 'demo#index'

	get 'ueditor/image' => 'ueditor#showimage'
	post 'ueditor/imageUp' => 'ueditor#imageUp'
	post 'ueditor/imageManager' => 'ueditor#imageManager'
	post 'ueditor/getRemoteImage' => 'ueditor#getRemoteImage'
	post 'ueditor/fileUp' => 'ueditor#fileUp'
	post 'ueditor/getMovie' => 'ueditor#getMovie'

	match 'demo/:type'=>'demo#show'
	root :to => "welcome#index"
end
