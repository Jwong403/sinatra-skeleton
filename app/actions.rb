# Homepage (Root path)
  
helpers do
  def current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end 

before do
  redirect '/login' if !current_user && request.path != '/login' && request.path != '/signup'
end

#--- Get Section --> 

get '/' do
  @movies = Movie.all.reverse
  erb :index
end

get '/login' do
    erb :login
end

get '/signup' do
    erb :signup
end

get '/profile' do
    erb :profile
end

get '/movies/new' do
  erb :new_movie
end

get '/logout' do
  "You have Logged out"
end

#--- Post section --->
post '/login' do
  username = params[:Email]
  password = params[:Password]

  user = User.find_by(Email: Email)
  if user.password == Password
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end 

post '/signup' do
  email = params[:email]
  password = params[:password]

  user = User.find_by(email: email)
  if !user.present?
    user = User.create(email: email, password: password)
    session[:user_id] = user.id 
    redirect '/'
  else
    redirect '/signup'
  end
end

post '/profile' do
    redirect '/login'
end

post '/movies/create' do
    title = params[:title]
    date_released = params[:date_released]
    rating = params[:rating]
    run_time = params[:run_time]
    genre = params[:genre]
    body = params[:body]
    director = params[:director]
    writers = params[:writers]
    stars = params[:stars]

    current_user.movies.create title: title, date_released: date_released, rating: rating, run_time: run_time, genre: genre, body: body, director: director, writers: writers
    redirect "/movies/create"
end
