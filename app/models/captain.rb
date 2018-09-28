class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(boats: :classifications).where('classification.name = Catamaran'))
  end
end
