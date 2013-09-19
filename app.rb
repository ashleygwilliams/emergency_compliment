require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module EmergencyCompliment
  class App < Sinatra::Application

    get '/' do
      erb :index
    end

    run! if app_file == $0

  end
end