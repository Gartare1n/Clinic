Rails.application.routes.draw do
  devise_for :doctors, path: 'doctors', controllers: { sessions: "doctors/sessions", registrations: "doctors/registrations"}
  devise_for :patients, path: 'patients', controllers: { sessions: "patients/sessions", registrations: "patients/registrations"}
  
  root "welcome#index"

  resources :appointments
  resources :patients, only: [:index, :show]
  resources :doctors, only: [:index, :show, :profile]
  root :to => 'appointments#index', :constraints => lambda { |request| request.env['warden'].user.class.name == 'Doctor' }, :as => "doctor_root"
  root :to => 'appointments#index', :constraints => lambda { |request| request.env['warden'].user.class.name == 'Patient' }, :as => "patient_root"
  resources :categories, except: [:destroy]

end
