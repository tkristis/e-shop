class StaticPagesController < ApplicationController

  def landing_page
    @products = Product.limit(8)
  end

  def product_list
    @products = Product.all.paginate(page: params[:page], per_page: 50)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end

  # Email in developer mode
  # def thank_you
  # @name = params[:name]
  # @email = params[:email]
  # @message = params[:message]
  # ActionMailer::Base.mail(:from => @email,
  #    :to => 'your-email@example.com',
  #    :subject => "A new contact form message from #{@name}",
  #    :body => @message).deliver_now
  # end
