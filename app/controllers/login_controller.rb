class LoginController < ApplicationController
  
  def new
    @login=Login.new
  end

  def create
    @login = Login.new(login_params) 
    if @login.save
      log_in @login
      redirect_to dashboard_path
    else 
      render html: "Error!"
    end
  end


  #   @login = Login.new(login_params)
  #   uname = Login.find_by_name(login_params[:name]).present?;
  #   pass= Login.find_by_password(login_params[:password]).present?;
  #   if !uname && !@@check 
  #     render html: "Error!"
  #   elsif @@check
  #     @login.save
  #     redirect_to dashboard_path
  #   else
  #     if pass
  #       redirect_to dashboard_path
  #     else
  #       render html: "Error!"      
  #     end
  #   end
  # end

  def save
    @login = Login.new(login_params)
    uname = Login.find_by_name(login_params[:name]).present?;
    pass = Login.find_by_password(login_params[:password]).present?;
    if uname && pass
      redirect_to dashboard_path
    else
      render html: "Error!"
    end
  end
    
  
  def signup
  end

  private
    def login_params
    params.require(:login).permit(:name, :password)
    end
end