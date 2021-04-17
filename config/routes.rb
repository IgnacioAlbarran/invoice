Rails.application.routes.draw do
  resources :invoice_lines
  resources :invoice_headers

  get     '/invoice_lines/:id/new', to: 'invoice_line#new'
  delete  '/invoice_lines/:id', to: 'invoice_lines#destroy', as: 'delete_invoice_line'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
