class Comment < ActiveRecord::Base
  belongs_to :bout
  validates :name, :presence => true
  validates :body, :presence => true
end
