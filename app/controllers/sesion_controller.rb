class SesionController < ApplicationController
  def login
      puts "hola"
  end
  
  def new 
    @user = User.new
  end

  def create  
    @user = User.find_by(nombre: params[:nombre])
    puts "Hola" 

    if !!@user && user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to '/'
    else
      message = "Error user o contraseña incorrectos"
      redirect_to '/users', notice: message
    end
  end  

  def logearse   
    user = User.new(user_params_login)
    @print = user 
        
  end

  def signIn

  end

  def logout

  end

  private
      def user_params_login
        params.require(:user).permit(:usuario_registrado, :contrasena_registrada)
      end

end
