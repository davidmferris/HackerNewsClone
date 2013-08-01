HackerNews::Application.routes.draw do

resources :links, :comments, :votes, :users


root :to => 'links#index'
end
