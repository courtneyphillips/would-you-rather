require 'rails_helper'

describe Option do
  it { should belong_to :bout }
  it { should validate_presence_of :name }
end
