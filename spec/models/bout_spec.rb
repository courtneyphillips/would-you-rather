require 'rails_helper'

describe Bout do
    it { should have_many :comments }
    it { should have_many :options }
end
