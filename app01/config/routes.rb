Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'hello/index'
    get 'hello', to: 'hello#index'
    get 'hello/param'
    get 'hello', to: 'hello#param'
end
