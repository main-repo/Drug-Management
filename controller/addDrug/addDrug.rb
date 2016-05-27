get "/addNewDrug" do
  @catg = Category.all
  haml :addNewDrug
end

post "/addNewDrug" do
  @drug = params[:name]
  if Drug.new(:name =>params[:name]).valid?
    Drug.create(:name =>params[:name],:quantity =>params[:quantity],:price =>params[:price])
    binding.pry
    flash[:msg] = "Drug with name #{@drug} added successfully"
    redirect '/addNewDrug'
  else
    flash[:error] = "Drug with this name already exists"
    redirect '/addNewDrug'
  end
end
