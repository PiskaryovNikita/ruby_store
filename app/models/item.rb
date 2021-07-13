class Item < ApplicationRecord
  attr_accessor :price, :name, :real, :weight

  validates :price, {numericality: {greater_than: 0}}
end
