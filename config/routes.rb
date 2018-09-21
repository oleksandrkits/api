Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
             },
             controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
             }

  namespace :api do
    namespace :v1 do
      resources :fruits, only: [:index, :create, :destroy, :update]
    end
  end
end
