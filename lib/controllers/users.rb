class MakersBnB < Sinatra::Base
  get '/users/new' do
    @user = User.new
    erb :'users/new'
  end

  post '/users' do
    @user = User.create(email: params[:email], username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      redirect '/spaces'
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :'users/new'
    end
  end

  post '/users/my_account' do
    prepare_lists
    erb :'users/my_account'
  end

  get '/users/my_account' do
    prepare_lists
    erb :'users/my_account'
  end
end
