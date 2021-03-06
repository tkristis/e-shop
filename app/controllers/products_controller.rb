class ProductsController < ApplicationController
  # before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  # Access search term
  def index
    if params[:q].present?
      search_term = params[:q]
      if Rails.env.development?
        @products = Product.where("name LIKE ?", "%#{search_term}%").paginate(page: params[:page], per_page: 20)
      else
        @products = Product.where("name ilike ?", "%#{search_term}%").paginate(page: params[:page], per_page: 20)
      end
    else
      @products = Product.all.paginate(page: params[:page], per_page: 20)
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @comments = @product.comments.order('created_at DESC').paginate(page: params[:page], per_page: 5)
    @order_made =! Order.find_by(user_id: current_user, product_id: :id)
    @comment_allowed =! @comments.find_by(user_id: current_user)
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  # GET /products/1/edit
  def edit
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]

    respond_to do |format|
      if @product.save
        format.html { redirect_to :back, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product.category_id = params[:category_id]
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    # def set_product
    #   @product = Product.find(params[:id])
    # end

    def find_product
      @product = Product.find_by_slug!(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(
        :name,
        :description,
        :image_url,
        :color,
        :price,
        :flavors,
        :category_id)
    end
end
