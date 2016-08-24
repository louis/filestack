Rails.application.routes.draw do
  match '/webhook' => 'webhook#callback', via: [:get, :post]
  root 'welcome#index'
end
