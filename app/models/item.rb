class Item < ApplicationRecord
  attr_accessor :price, :name, :real, :weight

  validates :price, {numericality: {greater_than: 0}}

  after_initialize { puts "initialized" } #Item.new; Item.first
  after_save {} #Item.save; Item.create; Item.update_attributes
  after_create {} #Item.create
  after_update {} #Item.update
  after_destroy {} #Item.destroy
end
