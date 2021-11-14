class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
      render plain: User.all.map { |user| user.display_user_list}
  end





#   def create

#       first_name = params[:first_name]
#       last_name = params[:last_name]
#       email = params[:email]
#       password = params[:password]

#       new_user = User.create!(

#           first_name: first_name,
#           last_name: last_name,
#           email: email,
#           password: password,
#         )

#         render plain: "added new user!"
#     end

def create
   User.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password_digest: digest(params[:password])


   )
end

end
