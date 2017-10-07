class Tshirt < ApplicationRecord

  SIZE_RANGE = ["S", "M", "L", "XL"]
  COLOR_RANGE = ["blue", "red", "white", "grey"]

  validates_presence_of :size
  validates_presence_of :color
  validates_presence_of :stock
  validates_presence_of :price
  validates :stock, :numericality => { :greater_than_or_equal_to => 0 }

  validate :size_condition
  def size_condition
    if SIZE_RANGE.exclude?(size)
      self.errors.add( :size, :invalid, message: "T-Shirts only available in the following sizes: S, M, L or XL")
    end
  end

  validate :color_condition
  def color_condition
    if COLOR_RANGE.exclude?(color)
      self.errors.add( :color, :invalid, message: "Color not available")
    end
  end

end
