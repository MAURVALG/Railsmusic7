Rails.application.routes.draw do
  #get 'welcome/index'
  #get "categorys/new"
  #post "categorys" => "categorys#create"
  #get "categorys/:id" => "categorys#show"
  #get "categorys" => "categorys#index"
  #get "categorys/:id/edit" => "categorys#edit"
  #put "categorys/:id" => "categorys#update"
  #delete "categorys/:id" => "categorys#destroy"


    resources :categorys do
    	resources :songs
    end

  root :to => "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
