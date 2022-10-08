Rails.application.routes.draw do
  get 'diary_pages/input'
  get 'diary_pages/calendar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
