get '/create_order' do
  haml :create_order
end

post '/create_order' do
  puts "order submitted Unsuccessfully" 
end

get '/view_orders' do
  haml :view_orders
end

post '/view_orders' do
  puts "orders Hidden LOL" 
end

