class ProductsController < ApplicationController
    def index
        @products = Product.all
        @clients = Client.all
    end

    def new 
        @product = Product.new
      end 
  
      def create
        @product = Product.new(product_params)
        if @product.save
          redirect_to products_path
        else
          render :new
        end
      end

      def edit
        @product = Product.find(params[:id])
      end

      def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        redirect_to products_path
      end

      def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
      end 

      private

      def product_params
        params.require(:product).permit(:name, :location, :product_type, :status, :price, :neighboorhood, :client_id, :image)
      end
end