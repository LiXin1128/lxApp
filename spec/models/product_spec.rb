require 'rails_helper'

describe Product do

	before do
		@product = Product.create!(name: "race bike")
	end

	context 'when the product has comments' do
		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	it "its not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end
end