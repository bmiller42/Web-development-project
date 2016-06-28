Rails.application.routes.draw do
    root "courses#index"
    resources :students
    resources :courses do
        resources :enrollments, shallow: true
    end

end
