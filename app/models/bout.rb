class Bout < ActiveRecord::Base
  has_many :options
  has_many :comments
  accepts_nested_attributes_for :options
end
