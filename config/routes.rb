Rails.application.routes.draw do
  resources :cal_taxes do
    collection do
      get "calc"
    end
  end
end

