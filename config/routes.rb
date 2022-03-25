Rails.application.routes.draw do
  root "provinces#index"

  get ":province", to: "provinces#show", as: :province
  get ":province/:county", to: "counties#show", as: :county
  get ":province/:county/clubs/:club", to: "clubs#show", as: :club
  get ":province/:county/pitches/:pitch", to: "pitchs#show", as: :pitch
end
