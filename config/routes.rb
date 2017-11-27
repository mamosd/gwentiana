Selfstarter::Application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  # namespace :admin do
  #   resources :order
  # end

  
  root to: "preorder#index"
  match '/preorder'               => 'preorder#index', :via => [:get,:post]
  # get 'preorder/checkout'
  get '/preorder/checkout_amount'
  # match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  # match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  # match '/preorder/prefill'       => 'preorder#prefill', :via => [:get,:post]
  # match '/preorder/postfill'      => 'preorder#postfill', :via => [:get,:post]
  match '/preorder/stripe_checkout'      => 'preorder#stripe_checkout', :via => [:get,:post]
  match '/preorder/checkout_amount'      => 'preorder#checkout_amount', :via => [:get,:post]
  match '/news'    => 'preorder#news', :via => :get
  match '/presskit'    => 'preorder#presskit', :via => :get
  match '/comments'    => 'preorder#comments', :via => :get
  match '/contact'    => 'preorder#contact', :via => :get
  # match '/confirm'    => 'order#confirm', :via => [:get,:post]
  post 'order/confirm/:id' => 'order#confirm'
end


  # mount RailsAdmin::Engine => '/backend', :as => 'rails_admin'
  # mount Rich::Engine => '/rich', :as => 'ric