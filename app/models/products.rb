class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  validates_presence_of :name,
                        :description,
                        :price,
                        :discounted_price,
                        :display
end
