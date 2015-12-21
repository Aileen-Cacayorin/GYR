Rails.application.routes.draw do
  devise_for :parents, controllers: {
        sessions: 'parents/sessions', registrations: 'parents/registrations'
      }

  devise_for :teachers, controllers: {
        sessions: 'teachers/sessions',
      }

  resources :teachers do
    resources :class_groups
  end

  resources :class_groups do
    resources :daily_summaries
    resources :students
  end

  resources :students do
    resources :reports
  end

  resources :parents do
    resources :students
  end

  root to: "class_groups#index"
end
