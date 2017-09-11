Rails.application.routes.draw do
  root to: 'cells#index'
  
  resources :cells do
    member do
      put 'find_cell'
    end
  end
end
