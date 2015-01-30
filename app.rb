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

get('/bands/:id') do
  @band = Band.find(params["id"].to_i)
  erb(:bands)
end

post('/bands/:id') do
  band = Band.find(params["id"].to_i)
  band_id = band.id()
  redirect "/bands/#{band_id}"
end

#<a href="/bands/<%= band.id %>"<%= band.band_name %></a>
