class Option < ActiveRecord::Base
  belongs_to :bout
  validates :name, :presence => true
end
