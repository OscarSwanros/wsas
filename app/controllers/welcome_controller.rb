class WelcomeController < ApplicationController
  expose(:clients) { Client.order(created_at: :desc).limit(5) }
  expose(:jobs) { Job.order(updated_at: :desc).limit(5) }
end
