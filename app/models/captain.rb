class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).where(:boats => {:classifications => {:name => 'Catamaran'}}))
  end
end
