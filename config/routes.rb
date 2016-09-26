 Rails.application.routes.draw do


  get 'public/index'

  get 'login/login'

  get 'login/logout'

  get 'categories/index'

  get 'categories/edit'

  get 'categories/show'

  get 'categories/new'

  get 'categories/delete'

  get 'schools/index'

  get 'schools/new'

  get 'schools/edit'

  get 'schools/delete'

  get 'schools/show'

  get 'campus/index'

  get 'campus/delete'

  get 'campus/edit'

  get 'campus/new'

  get 'clubs/index'

  get 'clubs/new'

  get 'clubs/edit'

  get 'clubs/show'

  get 'clubs/delete'

  get 'users/index'

  get 'users/edit'

  get 'users/new'

  get 'users/show'

  get 'users/delete'

  get 'users/destroy'

  resources :users do 
  	member do # member REST routes always require and id 
  		get :delete #creates helper : delete_user_path(:id)
    end
  end

  resources :clubs do
    member do 
      get :delete # creates helper :delete_club_path(:id)
    end 
  end

  resources :categories do
    resources :clubs 
    member do 
      get :delete 
    end
  end



 


  root 'public#index'

  match ':controller(/:action(/:id))', :via=>[:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
