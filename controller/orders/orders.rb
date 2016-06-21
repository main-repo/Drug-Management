get '/create_order' do
	@category = Category.all
	haml :create_order
end
post '/show_drug_ByCategory/:s1' do
	@temp = params['s1'].to_i
	@drugs = Category[@temp].drugs
	@catname = Category[@temp].name
	@drug_info = @drugs.map(&:values)
	json @drug_info
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

get '/temp' do
	@drugs= Drug.all
	@drug_info = @drugs.map(&:values)
	json @drug_info
end

