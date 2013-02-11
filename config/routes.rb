GestaoEscolar::Application.routes.draw do
  root :to => "home#index"

  controller :teachers do
    get  "/teachers",
      :action => :index,
      :as => :list_teacher

    get  "/teachers/new",
      :action => :new,
      :as => :new_teacher

    post "/teachers/new",
      :action => :create,
      :as => false

    get  "/teachers/:id/edit",
      :action => :edit,
      :as => :edit_teacher

    put "/teachers/:id/edit",
      :action => :update,
      :as => false

    get "/teachers/:id/remove",
      :action => :remove,
      :as => :remove_teacher

    delete "/teachers/:id/remove",
      :action => :destroy,
      :as => false
  end

  controller :disciplines do
    get "/disciplines",
      :action => :index,
      :as => :list_discipline

    get  "/disciplines/new",
      :action => :new,
      :as => :new_discipline

    post "/disciplines/new",
      :action => :create,
      :as => false

    get  "/disciplines/:id/edit",
      :action => :edit,
      :as => :edit_discipline

    put "/disciplines/:id/edit",
      :action => :update,
      :as => false

    get  "/disciplines/:id/remove",
      :action => :remove,
      :as => :remove_discipline

    delete "/disciplines/:id/remove",
      :action => :destroy,
      :as => false
  end

end
