require 'rails_helper'

RSpec.describe Response, :type => :model do
  it "is valid with basic attributes" do
    response = Response.new(rating: 5, comment: 'very good', recipe_id: 1)
    expect(response).to be_valid
  end

end
