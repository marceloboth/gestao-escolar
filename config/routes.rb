GestaoEscolar::Application.routes.draw do

  root :to => "classrooms#index"

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

  controller :classrooms do
    get "/classrooms",
      :action => :index,
      :as => :list_classroom

    get "/classrooms/:id/show",
      :action => :show,
      :as => :show_classroom

    get  "/classrooms/new",
      :action => :new,
      :as => :new_classroom

    post "/classrooms/new",
      :action => :create,
      :as => false

    get  "/classrooms/:id/edit",
      :action => :edit,
      :as => :edit_classroom

    put "/classrooms/:id/edit",
      :action => :update,
      :as => false

    get  "/classrooms/:id/remove",
      :action => :remove,
      :as => :remove_classroom

    delete "/classrooms/:id/remove",
      :action => :destroy,
      :as => false
  end

  resources :classroom_disciplines

  controller :students do
    get "/students",
      :action => :index,
      :as => :list_student

    get  "/students/new",
      :action => :new,
      :as => :new_student

    post "/students/new",
      :action => :create,
      :as => false

    get  "/students/:id/edit",
      :action => :edit,
      :as => :edit_student

    put "/students/:id/edit",
      :action => :update,
      :as => false

    get  "/students/:id/remove",
      :action => :remove,
      :as => :remove_student

    delete "/students/:id/remove",
      :action => :destroy,
      :as => false
  end
end
