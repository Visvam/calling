class SessionsController < ApplicationController
  def new
  end

  def create
    login = Login.find_by(name: login_params[:name])
    return render html: "Error!" unless login
    session[:login_id] = login.id
    redirect_to dashboard_path
  end

  def destroy
    
    session[:login_id] = nil
    redirect_to root_path
  end

	private

	def login_params
		 params.require(:sessions).permit(:name, :password)
	end
end
