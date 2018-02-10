class StocksController < ApplicationController
    
    def search
       if params[:stock].present? 
            @stock = Stock.new_from_lookup(params[:stock])
                if @stock
                  render partial: 'users/result'
                else 
                    flash[:danger] = 'You have entered incorrect symbol'
                    redirect_to my_portfolio_path
                end              
       else
            flash[:danger] = 'Please enter stock symbol to search'
            redirect_to my_portfolio_path    
       end 
    end    

end
