require 'rails_helper'

RSpec.describe ResponsesController, :type => :controller do
  let(:valid_attributes) {
    {
      recipe_id: 1,
      rating: 5,
      comment: 'very good'
    }
  }

  let(:invalid_attributes) {
    {
      rating: 'string',
      comment: 5
    }
  }
end
