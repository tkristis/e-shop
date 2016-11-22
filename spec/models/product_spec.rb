require 'rails_helper'

describe Product do 
	
	before do
	  @product = Product.create!(name: "Harley-Davidson")
	  @user = User.create!(email: "test@test.com", password: "123456")
	  
	  @product.comments.create!(rating: 1, user: @user, body: "Awful chopper!")
	  @product.comments.create!(rating: 3, user: @user, body: "Okay chopper!")
	  @product.comments.create!(rating: 5, user: @user, body: "Awesome chopper!")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Nice chopper")).not_to be_valid
	end

end