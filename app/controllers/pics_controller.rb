class PicsController < ApplicationController
  before_action :find_pic, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show, :add, :cart , :clearCart]

  def index
    if session[:cart] then 
      @cart = session[:cart] 
    else
      @cart = {}
    end
    @pics = Pic.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pic = Pic.new
    #@pic = current_user.pics.build
  end

  def create
    @pic = Pic.new pic_params
    #@pic = current_user.pics.build(pic_params)

    if @pic.save
      redirect_to @pic, notice: "Yesss! It was posted!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pic.update(pic_params)
      redirect_to @pic, notice: "Congrats! Pic was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @pic.destroy
    redirect_to root_path
  end

 



def add
    
    id = params[:id]
    if session[:cart] then 
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end

    if cart[id] then 
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil 
    redirect_to :action => :index
  end

  def cart
    if session[:cart] then 
      @cart = session[:cart] 
    else
      @cart = {}
    end
  end







  private

  def pic_params
    params.require(:pic).permit(:title, :description, :image, :price)
  end

  def find_pic
    @pic = Pic.find(params[:id])
  end
end
