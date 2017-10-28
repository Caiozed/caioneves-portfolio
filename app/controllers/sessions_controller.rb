class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(session_params)
    unless admin.nil?
      cookies.signed[:admin_id] = admin.id
      redirect_to root_path
    else
        render :new
    end
    
  end

  def destroy
    cookies.delete(:admin_id)
    redirect_to root_path
  end
  
  private 
  def session_params
    params.require(:session).permit(:name, :password)
  end
end
