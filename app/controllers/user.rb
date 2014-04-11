enable 'sessions'

get '/activity/signup' do
  # @user = User.find(sessions[:user_id])
  @activity = Activity.find(6)
  @curr_price_person = @activity.price / @activity.participants.count
  @signup_price_person = @activity.price / (@activity.participants.count + 1)
  @time = @activity.time.strftime("%I:%M on %a %b %d")

  erb :'user/index'
end

post '/activity/confirm' do
  # @user = User.find(sessions[:user_id])
  @user = User.find(4) # delete during merge
  @activity = Activity.find(6)
  @time = @activity.time.strftime("%I:%M")

  @user_reg = Registration.new(user_id: @user.id, activity_id: @activity.id)

  if @user_reg.save
    @price_per_person = @activity.price / @activity.participants.count
    erb :'user/confirm'
  else
    redirect '/activity/signup'
  end
end

delete '/activity/delete/:id' do
  user_reg = Registration.find(params[:id])
  user_reg.destroy

  redirect '/activity/signup'
end
