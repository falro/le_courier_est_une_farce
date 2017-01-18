class ChargesController < ApplicationController
    
    def new
      @command = Command.find(params[:command_id])
    end

    def create
      # Amount in cents
      @command = Command.find(params[:command_id])
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @command.totalPrice * 100,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
    @command.payment=true
    @command.save
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to command_charges_path
    end
end
