class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).merge(Boat.joins(:classifications)).group('classifications.name').having('count(classifications.name = Catamaran) > 0'))
  end
end
