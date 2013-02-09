GestaoEscolar::Application.routes.draw do
  get  "/",          :to => "home#index"
  get  "/teachers",  :to => "teachers#new"
  post "/teachers",  :to => "teachers#create"
  get  "/teachers/list",  :to => "teachers#list"
end
