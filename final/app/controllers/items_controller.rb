class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @items = @items.select {|item| item.owner_id != current_user.id}
    @top = @items.max(3) {|item1, item2| item1.purchased <=> item2.purchased}
    @sale = @items.select {|item| item.on_sale }

  end

  # GET /items/1
  # GET /items/1.json
  def show
	  @users = User.all
      @comment = @item.comments.new
	  @comments = Comment.all
  end

  def motherboards
    @items = Item.all
    @items = @items.select {|item| item.owner_id != current_user.id}
    @motherboards = @items.select {|item| item.item_type == "motherboard"}
  end

  def graphics
    @items = Item.all
    @items = @items.select {|item| item.owner_id != current_user.id}
    @graphics = @items.select {|item| item.item_type == "graphics card"}
  end
  
  def solid_state
    @items = Item.all
    @items = @items.select {|item| item.owner_id != current_user.id}
    @solid_state = @items.select {|item| item.item_type == "solid_state_drive"}
  end  
  
  def cpu
    @items = Item.all
    @items = @items.select {|item| item.owner_id != current_user.id}
    @cpus = @items.select {|item| item.item_type == "cpu"}
  end

  def my_account
    @items = Item.all
    @my_cart = current_user.cart.map {|item| @items.find(item)} 
    @cart_cost = @my_cart.inject(0) {|sum, x| sum + x.price}
    @my_wishlist = current_user.wishlist.map {|item| @items.find(item)}
    @wish_cost = @my_wishlist.inject(0) {|sum, item| sum + item.price}
    @my_items = @items.select {|item| item.owner_id == current_user.id}
    @bought = current_user.bought.map {|item| @items.find(item)}
  end
  
  def add
    @item = Item.find(params[:id])
    if @item.owner_id == current_user.id
        redirect_to my_account_url, notice: 'You cannot buy items you are selling.'
    else
        current_user.cart.push(params[:id].to_i)
        current_user.save
        redirect_to my_account_url, notice: 'Item was successfully added to your cart.'
    end
  end

  def addwish
    @item = Item.find(params[:id])
    if @item.owner_id == current_user.id
        redirect_to my_account_url, notice: 'You cannot wish for things you already own.'
    else
        current_user.wishlist.push(params[:id].to_i)
        current_user.save
        redirect_to my_account_url, notice: 'Item has been added to your wishlist'
    end
  end
  
  def wishtocart
    @item = Item.find(params[:id])
        if @item.owner_id == current_user.id
            redirect_to my_account_url, notice: 'You cannot buy items you are selling.'
        else
            current_user.wishlist.delete(params[:id].to_i)
            current_user.cart.push(params[:id].to_i)
            current_user.save
            redirect_to my_account_url, notice: 'Item was successfully added to your cart.'
        end
  end
  def remove 
    current_user.cart.select! {|item| item != params[:id].to_i}
    current_user.save
    redirect_to my_account_url, notice: 'Item was successfully removed.'
  end 
  def removewish
    current_user.wishlist.select! {|item| item != params[:id].to_i}
    current_user.save
    redirect_to my_account_url, notice: 'Item was successfully removed.'
  end
  
  def on_sale
	@item = Item.find(params[:id])
	if @item.on_sale
		@item.on_sale = false 
    	@item.price  = @item.price * 2
		@item.save 
		redirect_to @item, notice: 'You have put this item on sale.'
	elsif !@item.on_sale
		@item.price = @item.price / 2
		@item.on_sale = true
		@item.save
		redirect_to @item, notice: 'You have restored this item to full price'
	end
  end
 
  def walletadd
    current_user.wallet = current_user.wallet + 100
    current_user.save
    redirect_to my_account_url, notice: 'You added 100$ to your wallet'
  end  
  def buy
    @items = Item.all
    @users = User.all
    @my_cart = current_user.cart.map {|item| @items.find(item)}
    @cart_cost = @my_cart.inject(0) {|sum, item| sum + item.price}
    @money = (current_user.wallet - @cart_cost)
    @outofstock = false
    if @money >= 0
        @cart_cost = 0 #reset to 0 and recalc
        current_user.cart.each do |id|
            @item = @items.find(id)
            @user = @users.find(@item.owner_id)
            if @item.stock > 0
                @item.purchased = @item.purchased + 1
                @item.stock = @item.stock - 1
                @user.wallet = @user.wallet + @item.price
                @user.save
                current_user.bought.push(id)
                @item.save
                @cart_cost = @cart_cost + @item.price
            else
                @outofstock = true
            end

        end    
        current_user.cart.clear
        current_user.wallet = (current_user.wallet - @cart_cost)
        current_user.save
        if !@outofstock
             redirect_to my_account_url, notice: 'You have bought all the items in your cart!'  
        else
            redirect_to my_account_url, notice: 'Some of the items in your cart were out of stock and unable to be purchased.'
        end
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
    @item.owner_id = current_user.id
    @item.purchased = 0
    @uploaded_io = params[:item][:uploaded_file]
    File.open(Rails.root.join('public', 'images', @item.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end
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
    @item.destroy
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
