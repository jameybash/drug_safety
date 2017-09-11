Rails.application.routes.draw do
  root to: 'cells#index'
  
  resources :cells do
    collection do
      post 'find_cell'
    end
  end
end
