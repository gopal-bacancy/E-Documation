class DocsController < ApplicationController
  def index

    if params[:flag]=='g'
      @doc=Document.where(user_id:session[:currentuser],documentype:'gov')
    elsif params[:flag]=='e'
      @doc=Document.where(user_id:session[:currentuser],documentype:'edu')
    end
  end
  def create
    @docu=Document.create(all_params)
    @docu.user_id=session[:currentuser]
    if @docu.save
      redirect_to docs_path
    else
      render 'index'
    end
  end
  def edit
    @user=Document.find(params[:id])
    
    
  end

  def new
    @user=Document.new
    
  end

  def update
    @user=Document.find(params[:id])  
    if @user.update(all_params) 
      index
      render 'index'
    else
      render 'edit'
    end

    
  end

  def destroy
    byebug
  end
  

  def show
    byebugs
  end

  def all_params
    params.require(:document).permit(:documentname,:documentid,:documentype)
  end

end
