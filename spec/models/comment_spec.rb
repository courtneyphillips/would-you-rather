require 'rails_helper'

RSpec.describe Comment do
  it { should belong_to :bout }
  it { should validate_presence_of :name }
  it { should validate_presence_of :body }
end
