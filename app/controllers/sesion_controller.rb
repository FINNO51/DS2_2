class SesionController < ApplicationController
  def new 
    @user = User.new
  end

  def create  
    @user = User.find_by(nombre: params[:nombre])
    puts "Hola" 

    if !!@user && user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to root_path
    else
      message = "Error user o contraseña incorrectos"
      redirect_to login_path, notice: message
    end
  end  

  def login
    puts "Estoy harto ya"
  end

  def signIn

  end

  def logout

  end
end
