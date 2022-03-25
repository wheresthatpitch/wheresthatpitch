Rails.application.routes.draw do
  root "provinces#index"

  get ":province", to: "provinces#show", as: :province
  get ":province/:county", to: "counties#show", as: :county
  get ":province/:county/clubs/:club", to: "clubs#show", as: :club
end
