Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }


  # Role-based roots
  authenticated :user, ->(u) { u.admin? } do
    root to: "admin/dashboards#show", as: :admin_root
  end

  authenticated :user, ->(u) { u.instructor? } do
    root to: "instructor/dashboards#show", as: :instructor_root
  end

  authenticated :user do
    root to: "dashboards#show", as: :student_root
  end

  unauthenticated :user do
    root to: redirect("/users/sign_in")
  end




  # Admin Namespace
  namespace :admin do
    resource :dashboard, only: [ :show ]
    resources :cohorts
    resources :users
    resources :enrollments, only: [ :new, :create, :destroy ]
  end

  # Instructor Namespace
  namespace :instructor do
    resource :dashboard, only: [ :show ]
    resources :lectures
    resources :class_sessions
    resources :challenges
    resources :submissions, only: [ :index, :show, :update ]
    resources :attendances, only: [ :index, :update ]
  end

  # Student Routes (Root Namespace)
  resource :dashboard, only: [ :show ]
  resources :lectures, only: [ :index, :show ]
  resources :class_sessions, only: [ :index ] do
    resources :attendances, only: [ :create ]
  end
  resources :challenges, only: [ :index, :show ]
  resources :submissions, only: [ :index, :show, :create, :update ]
  resources :flashcards, only: [ :index, :show ] do
    collection do
      get :bookmarks
      get :needs_attention
      get :rehearse
    end
  end
end
