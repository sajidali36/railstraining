class Customer < ApplicationRecord
  validates :name, length: { minimum: 2 }
  before_save :before_print_value
  around_save :around_print_value
  after_save :after_print_value

  private

  def before_print_value
    puts 'object is going to save!'
  end

  def around_print_value
    puts 'object is now around state'
  end

  def after_print_value
    puts 'object is saved'
  end
end
