UeditorForRails::Application.routes.draw do
	get 'sn' => 'welcome#sn'
	get 'change' => 'welcome#change'
	get 'demo' => 'demo#index'
	match 'demo/:type'=>'demo#show'
	root :to => "welcome#index"
end
