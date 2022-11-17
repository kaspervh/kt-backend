class SessionController < ApplicationController
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_user_data({user_data: @user.id})
      render json: {token: token}
    else
      render json: { message: "invalid credentials"}
    end
  end
end
