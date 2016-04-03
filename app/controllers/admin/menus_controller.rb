class Admin::MenusController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @photo = @menu.build_photo
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to admin_menus_path
    else
      render :new
    end
  end

  def edit
    @menu = Menu.find(params[:id])
    if @menu.photo.present?
      @photo = @menu.photo
    else
      @photo = @menu.build_photo
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])

    if @menu.update(menu_params)
      redirect_to admin_menus_path
    else
      render :edit
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to admin_menus_path, alert: "菜單已刪除"
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :phone, :address, :delivery, photo_attributes: [:image, :id], foods_attributes: [:id, :name, :price, :_destroy])
  end
end
