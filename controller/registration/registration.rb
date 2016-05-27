post '/reg' do
  haml :registration
end

get '/reg' do
  haml :registration
end

post '/registration' do
  if User.new(:email => params[:email]).valid?
    params[:password] = BCrypt::Password.create(params[:password])
    p = params
    p = p.delete("cpassword")
    User.create(params)
    session[:user] = params[:user]
    redirect '/home'  
    
  else
    flash[:error] = "Email ID already exists"
    redirect '/reg'
  end
end