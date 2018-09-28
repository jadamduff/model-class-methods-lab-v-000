class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).merge(Boat.joins(:classifications)).having('classifications.name = Catamaran'))
  end
end
