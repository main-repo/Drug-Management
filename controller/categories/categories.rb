get "/viewAllCategories" do
  @all = Category.all
  haml :viewAllCategories
end


post "/create_cat" do
  @cat_name = params[:cat]
  if Category.new(:catName  =>params[:catName]).valid?
    Category.create(params)
    redirect '/create_cat'
       
  else
    flash[:error] = "Category name already exists"
    redirect '/create_cat'
  end
end
