class HomeController < ApplicationController

  def index
   render "index"
  end

  def new
    # by default it willrender new.htm.erb file
  end

  def create
    falg = true

    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
          render plain: "You have entered the correct password!"
     else
        render plain: "Incorrect password!"
     end


  end
end
