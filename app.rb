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
  @venues = @band.venues
  erb(:bands)
end

post('/bands/:id') do
  band = Band.find(params["id"].to_i)
  band_id = band.id()
  venue_name = params["venue_name"]
  venue = Venue.create({ venue_name: venue_name })
  band.update({ venue_ids: [venue.id()]})
  redirect "/bands/#{band_id}"
end

# post('/bands/:id') do
#   venue_name = params["venue_name"]
#   venue = Venue.create({ venue_name: venue_name})
#   redirect "/bands/#{band_id}"
# end

patch('/bands/:id') do
  band_name = params["band_name"]
  @band = Band.find(params["id"].to_i)
  @band.update({ band_name: band_name})
  band_id = @band.id()
  redirect "/bands/#{band_id}"
end

delete('/bands/:id?') do
  @band = Band.find(params["id"])
  @band.destroy()
  redirect '/'
end

#----------

# post('/bands/:id') do
#   venue = Venue.find(params["id"].to_i)
#   band_id = band.id()
#   venue_name = params["venue_name"]
#   venue = Venue.create({ venue_name: venue_name })
#   band.update({ venue_ids: [venue.id()] })
#   redirect "/bands/#{band_id}"
# end
