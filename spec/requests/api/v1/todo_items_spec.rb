require 'rails_helper'

RSpec.describe "Api::V1::TodoItems", type: :request do
  before :each do
    @user = User.create!(email: 'user@test.com', password: 'password')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user.id)
  end

  describe "Todo Items CRUD" do
    xit 'Creates a Todo Item' do
      item_params = {'title': 'Test todo item', 'complete': false}
      post '/api/v1/todo_items', params: item_params
      rsp = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
    end
  end
end
