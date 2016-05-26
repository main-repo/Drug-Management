get '/index' do
  haml :index
end

post '/home' do

  @user = User[params[:user]]
  @username = @user.user

  if  BCrypt::Password.new(@user.password) == params[:pass]
    session[:user] = params[:user]
    redirect '/index'
  else
  	flash[:error] = "Either of userId or password was wrong."
    redirect '/home'
  end
end

get "/logout" do
  session[:user] = nil
  redirect "/home"
end

get "/create_cat" do
  haml :create_cat
end

def login?
  if session[:user].nil?
    return false
  else
    return true
  end
end