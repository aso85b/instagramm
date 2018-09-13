Rails.application.routes.draw do
  mount LikeDislike::Engine, at: '/'
  devise_for :users
  resources :pics do
    member do
      put "Like", to: "pics#upvote"
    end
  end
  root "pics#index"

end
