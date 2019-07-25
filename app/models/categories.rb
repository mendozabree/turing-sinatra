class Category < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :products

  validates_presence_of :name
end
