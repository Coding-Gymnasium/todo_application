require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  describe 'validation' do
    it {should validate_presence_of :title }
  end

  describe 'relationships' do
    it { should belong_to :user }
  end
end
