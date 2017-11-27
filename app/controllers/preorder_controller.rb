class PreorderController < ApplicationController
  include ActionView::Helpers::DateHelper
  # skip_before_action :verify_authenticity_token, :only => :ipn
  before_action :authenticate_user!, :only => :stripe_checkout
  def index
    if params[:data] == "checked"
      UserMailer.confirm_order(User.find_by_id(params[:id].to_i).email).deliver
    end
  end

  # def checkout
  # end

  # def prefill
  #   @user = User.find_or_create_by(:email => params[:email])

  #   if Settings.use_payment_options
  #     payment_option_id = params['payment_option']
  #     raise Exception.new("No payment option was selected") if payment_option_id.nil?
  #     payment_option = PaymentOption.find(payment_option_id)
  #     price = payment_option.amount
  #   else
  #     price = Settings.price
  #   end

  #   @order = Order.prefill!(:name => Settings.product_name, :price => price, :user_id => @user.id, :payment_option => payment_option)

  #   # This is where all the magic happens. We create a multi-use token with Amazon, letting us charge the user's Amazon account
  #   # Then, if they confirm the payment, Amazon POSTs us their shipping details and phone number
  #   # From there, we save it, and voila, we got ourselves a preorder!
  #   port = Rails.env.production? ? "" : ":3000"
  #   callback_url = "#{request.scheme}://#{request.host}#{port}/preorder/postfill"
  #   redirect_to AmazonFlexPay.multi_use_pipeline(@order.uuid, callback_url,
  #                                                :transaction_amount => price,
  #                                                :global_amount_limit => price + Settings.charge_limit,
  #                                                :collect_shipping_address => "True",
  #                                                :payment_reason => Settings.payment_description)
  # end

  # def postfill
  #   unless params[:callerReference].blank?
  #     @order = Order.postfill!(params)
  #   end
  #   # "A" means the user cancelled the preorder before clicking "Confirm" on Amazon Payments.
  #   if params['status'] != 'A' && @order.present?
  #     redirect_to :action => :share, :uuid => @order.uuid
  #   else
  #     redirect_to root_url
  #   end
  # end

  # def share
  #   @order = Order.find_by(:uuid => params[:uuid])
  # end

  # def ipn
  # end

  def stripe_checkout

    begin
    # Stripe.api_key = Strip.find(1).api_key
    Stripe.api_key = "sk_test_rhYccwn5XNuhTA52oEJayjy2"
    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )
 
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => params[:amount].to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    @data = JSON.parse charge.to_s
    @address = Order.create(:name => params[:name], :phone => params[:phone], :hno => params[:hno], :city => params[:city], :state => params[:state], :zip => params[:zip], :country => params[:country], :transaction_id => @data["balance_transaction"], :user_id => current_user.id, :price => params[:amount], :quantity => params[:quantity], :product => params[:title], :est_delivery=> params[:deliver], :international_shipping=> params[:ship] )
    
    
    # @payment = PaymentOption.create(:amount => params[:amount].to_f, :amount_display => params[:amount].to_f, :shipping_desc => params[:ship], :delivery_desc => params[:deliver])
#     card_token = Stripe::Token.create( :card => { :name => params[:name_on_card], :number => params[:card_number], :exp_month => params[:exp_month], :exp_year => params[:exp_year], :cvc => params[:card_id] })
#         binding.pry
#     customer_params = {:card => card_token[:id], :email => params[:email]}
#     stripe_customer = Stripe::Customer.create(customer_params)
    # @payment.save
    @address.save
    UserMailer.confirm_payment(@data["source"]["name"], params[:title], params[:quantity].to_i, params[:amount].to_f, @data["card"]["last4"].to_i, @data["balance_transaction"]).deliver
    UserMailer.order_rcvd(User.find_by_admin(true).email, params[:title], params[:quantity].to_i, params[:amount].to_f, @data["card"]["last4"].to_i, @data["balance_transaction"]).deliver
    rescue Stripe::CardError => e
      flash[:error] = e.message
    end
  end

  def checkout_amount

  end



end


     