Rails.application.routes.draw do
  resources :invoice_lines
  resources :invoice_headers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
