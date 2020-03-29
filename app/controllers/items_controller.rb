class ItemsController < ApplicationController

  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
   @items = Item.new
   @category_parent = ["---"]
   @category_parent= Category.all.where(ancestry: nil).each do |parent|
    @category_parent<<parent.name
   end
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}",ancestry: nil).children
  end

  def create
  end

  def show
  end

  def edit
  end

  def purchase
    
  end
end

