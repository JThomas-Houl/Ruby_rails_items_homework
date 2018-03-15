class ItemsController < ApplicationController

    def index
        @item = Item.all

        render :index
    end

    def new
        @item = Item.new

        render :new

    end

    def edit
    
    end

    def item_params #grab the params, allow acess the them
        params.require(:item).permit(:serial_num, :description, :supplier, :status, :lender)
    end


    def create
        @item = Item.new(item_params)

        if (@item.save)
            redirect_to "/"
        end

       
      

    end




end
