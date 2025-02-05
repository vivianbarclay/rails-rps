#  Rails.application.routes.draw do
#   get 'game/home'
#   get 'game/rock'
#   get 'game/paper'
#   get 'game/scissors'
#   get 'game/rules'
#   get("/rock", { :controller => "", :action => ""})
# end

Rails.application.routes.draw do
  root 'game#home'          # Home page
  get '/rock', to: 'game#rock'
  get '/paper', to: 'game#paper'
  get '/scissors', to: 'game#scissors'
  get '/rules', to: 'game#rules'  # For the Rules link
end
