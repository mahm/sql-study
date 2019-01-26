Rails.application.routes.draw do
  root to: 'home#show'

  resource :executor, only: %i(create)
end
