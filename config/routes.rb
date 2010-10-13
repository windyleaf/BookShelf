Books::Application.routes.draw do |map|
  # root :to => "welcome#index"
  map.resources :books do |book| 
    book.resources :comments, :only => :create 
  end 
  map.root :controller => 'books', :action => 'index'
end
