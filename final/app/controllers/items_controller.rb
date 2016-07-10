class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @top = @items.max(3) {|item1, item2| item1.purchased <=> item2.purchased}
  end

  # GET /items/1
  # GET /items/1.json
  def show
      @comment = @item.comments.new
  end

  def motherboards
    @items = Item.all
    @motherboards = @items.select {|item| item.item_type == "motherboard"}
  end

  def graphics
    @items = Item.all
    @graphics = @items.select {|item| item.item_type == "graphics card"}
  end
  
  def solid_state
    @items = Item.all
    @solid_state = @items.select {|item| item.item_type == "solid_state_drive"}
  end  

  def my_account
    @items = Item.all
    @my_cart = current_user.cart.map {|item| @items.find(item)} 
    @cart_cost = @my_cart.inject(0) {|sum, x| sum + x.price}
    @my_wishlist = current_user.wishlist.map {|item| @items.find(item)}
    @my_items = @items.select {|item| item.owner_id == current_user.id}
  end
  
  def add
    current_user.cart.push(params[:id].to_i)
    current_user.save
    redirect_to motherboards_url, notice: 'Item was successfully added to your cart.'
  end

  def remove 
    current_user.cart.select! {|item| item != params[:id].to_i}
    current_user.save
    redirect_to my_account_url, notice: 'Item was successfully removed.'
  end 
    
  def buy
    @items = Item.all
    @my_cart = current_user.cart.map {|item| @items.find(item)}
    @cart_cost = @my_cart.inject(0) {|sum, item| sum + item.price}
    @money = (current_user.wallet - @cart_cost)
    if @money >= 0
        current_user.cart.clear
        current_user.wallet = @money
        current_user.save
        redirect_to my_account_url, notice: 'You have bought all the items in your cart!'
    else
        redirect_to my_account_url, notice: 'You dont have enough money to buy all the items in your cart.'
    end
  end
  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit

  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
      if @item.update(item_params)
        redirect_to @item, notice: 'Item was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    #@item.destroy
    #current_user.cart.select! {|item| item != params[:id].to_i}
    #current_user.save
   
    redirect_to my_account_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:filename, :name, :item_type, :owner_id, :on_sale, :purchased, :stock, :specs, :price, :comment_id)
    end
end
