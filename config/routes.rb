Spree::Core::Engine.routes.draw do
  namespace :admin do
		get "users/active_deactive/:id" => "users#active_deactive", as: 'users_active_deactive'
	end
end
