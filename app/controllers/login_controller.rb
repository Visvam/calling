class LoginController < ApplicationController

  
  def new
  	@login=Login.new
  end

  def create
  	#@login=Login.new(login_params[:login])
  	byebug
  	@login = Login.new(login_params);
  	#byebug
  	@login.save
  		redirect_to dashboard_path
  	
  end
  private
	  def login_params
		params.require(:login).permit(:name, :password)
	  end
end
