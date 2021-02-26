class HomeController < ApplicationController
  $id
  def index
    @user=User.new
  end

  def create
    @user=User.new(all_params)
    
    if @user.save
      index()
      render 'index'
      
    else
      render 'new'
    end
  end

  def new
    @user=User.new
  end

  def check_auth
    @user=User.find_by(phoneno:params[:phoneno],password:params[:password])
    if @user.blank?
      puts "blank object baka"
      index
      render 'index'
    else
      
      #id=@user.id
      session[:currentuser]=@user.id
      render "Profile"
    end


  end

  def all_params
    params.require(:user).permit(:firstname,:lastname,:email,:phoneno,:password,:aadhar)
  end
end