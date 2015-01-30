require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each{ |file| require file }

get('/') do
  @bands = Band.all
  erb(:index)
end

post('/') do
  band_name = params["band_name"]
  band = Band.create({ band_name: band_name })
  redirect '/'
end
