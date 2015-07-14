class Bout < ActiveRecord::Base
  has_many :options
  has_many :comments
end
