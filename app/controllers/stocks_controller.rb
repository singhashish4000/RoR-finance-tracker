class StocksController < ApplicationController
    
    def search
       if params[:stock].blank? 
           flash.now[:danger] = 'Please enter stock symbol to search'
       else 
           @stock = Stock.new_from_lookup(params[:stock])
           flash.now[:danger] = 'You have entered incorrect symbol' unless @stock        
       end
           render partial: 'users/result'
    end    
end
