Rails.application.routes.draw do

  namespace :admin do

    resources :sections do
      member do
        get 'activate', to: 'sections#update', defaults: {section: {active: true}}
      end

      resources :categories
    end

    resources :categories do
      member do
        get 'activate', to: 'categories#update', defaults: {category: {active: true}}
      end
    end

    resources :places
    resources :features

    root to: 'dashboard#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
