get "/addNewDrug" do
  @catg = Category.all
  haml :addNewDrug
end

post "/addNewDrug" do
  @drug = params[:drug_name]
  if Drug.new(:drug_name =>params[:drug_name]).valid?
    Drug.create(params)
    flash[:msg] = "Drug with name #{@drug} added successfully"
    redirect '/addNewDrug'
  else
    flash[:error] = "Drug with this name already exists"
    redirect '/addNewDrug'
  end
end
