Rails.application.routes.draw do
  resources :pilgrims
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins, controllers: { registrations: 'admins/registrations',
                                     sessions: 'admins/sessions', unlocks: 'admins/unlocks',
                                     passwords: 'admins/passwords', confirmations: 'admins/confirmations'}
end
