require 'pry'

get "/addNewDrug" do
  @cats = Category.all
  haml :addNewDrug
end

post "/addNewDrug" do
  @cats = params[:name]
  if Drug.new(:name =>params[:name]).valid?

    d= Drug.create(:name =>params[:name],:quantity =>params[:quantity],:price =>params[:price])
    
    len = params.keys.length
    i=3
    while i < len do
      d.add_category(params.keys[i])
      i += 1
    end


    flash[:msg] = "Drug with name #{@drug} added successfully"
    redirect '/addNewDrug'
  else
    flash[:error] = "Drug with this name already exists"
    redirect '/addNewDrug'
  end
end

get "/viewDrugs" do
  @all = Drug.all
  haml :viewDrugs
end

post "/viewDrugs" do
  
  @all = Drug.all
  redirect 'viewDrugs'
end


get "/updateDrug" do
  haml :updateDrug
end

post '/editDrug' do
  @selected_drug =Drug[params[:drug_id]]
  haml :show_drug
end

get "/show_drug" do
  haml :show_drug
end

post '/drug_edit' do
  Drug[params[:id]].update(:name => params[:name], :price=> params[:price], :quantity=> params[:quantity])
  Drug[params[:id]].add_category(params[:new_cat])
  @all = Drug.all
  redirect 'viewDrugs'
end


