Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects

  get 'courses/javascript', to: 'courses#first'
  get 'courses/python', to: 'courses#second'
  get 'courses/learner_dashboard', to: 'courses#dashboard'
  get 'learner/dashboard', to: 'learners#dashboard'

end
