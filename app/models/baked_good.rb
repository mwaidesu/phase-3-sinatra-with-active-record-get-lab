class BakedGood < ActiveRecord::Base
  belongs_to :bakery
  def self.by_price
    self.all.order(price: :desc)
  end

  def self.most_expensive
    self.all.order(price: :desc).first
  end

end