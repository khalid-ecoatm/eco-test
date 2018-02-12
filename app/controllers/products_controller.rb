class ProductsController < ApplicationController

    def index
        order = params[:order]
        # order = order + " desc" if(params[:desc])
        # order = order + " asc" if(params[:asc])

        

        p order
        
        if(params[:category_name])
            @products = Product.joins(:category).where(['categories.name = ?', params[:category_name]])
        else
            @products = Product.all
        end
        @products = @products.reverse_order if params[:desc]
        # @products = @products.order(order)
    end
end
