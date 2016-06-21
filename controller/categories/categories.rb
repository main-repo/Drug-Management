get "/changeCategories" do
  @all = Category.all
  binding.pry
  haml :changeCategories
end


post "/create_cat" do
  @cat_name = params[:name]
  if Category.new(:name  =>params[:name]).valid?
    Category.create(params)
    redirect '/create_cat'
       
  else
    flash[:error] = "Category name already exists"
    redirect '/create_cat'
  end
end

post '/changeCategories' do
  a = Category[params[:category_id]].set(:name=>params[:new_name])
  a.save_changes

  redirect '/changeCategories'
end

get "/viewAllCategories" do
  @all = Category.all
  haml :viewAllCategories
end 
