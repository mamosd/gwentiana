class UserMailer < ActionMailer::Base
  default :from => 'any_from_address@example.com'
  def confirm_payment(user, title, quantity, amount, last, transaction)
    @user = user
    @title = title
    @quantity = quantity
    @amount = amount
    @last = last
    @transaction = transaction
    mail( :to => @user, :subject => 'Payment Confirmation' )
  end

  def order_rcvd(user, title, quantity, amount, last, transaction)
    @user = user
    @title = title
    @quantity = quantity
    @amount = amount
    @last = last
    @transaction = transaction
    mail( :to => @user, :subject => 'Order Received' )
  end

  def confirm_order(user)
    @user = user
    mail( :to => @user, :subject => 'Order Confirmation' )
  end
end

