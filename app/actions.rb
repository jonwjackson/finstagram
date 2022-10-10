get '/' do
  @finstagram_posts = FinstagramPost.order(created_at: :desc)
  erb(:index)
end

get '/signup' do     # if a user navigates to the path "/signup",
  @user = User.new   # setup empty @user object
  erb(:signup)       # render "app/views/signup.erb"
end

post '/signup' do

  # grab user input values from params
  email      = params[:email]
  avatar_url = params[:avatar_url]
  username   = params[:username]
  password   = params[:password]

  # instantiate a User
  user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })

  # if user validations pass and user is saved
  if user.save

    # return readable representation of User object
    escape_html user.inspect

  else

    # display error messages
    escape_html user.errors.full_messages
  end
end