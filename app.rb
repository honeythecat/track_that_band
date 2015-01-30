require("bundler/setup")
Bundler.require(:default)

Dir[file.dir(__FILE__)] + '/lib/*.rb'].each{ |file| require file }

get('/') do
  @bands = Bands.all()
  erb(:index)
end
