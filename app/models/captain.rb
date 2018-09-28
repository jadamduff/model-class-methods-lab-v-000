class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.inlcudes(:boats).select('boats.*')
  end
end
