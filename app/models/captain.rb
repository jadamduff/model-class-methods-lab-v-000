class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(count(joins(boats: :classifications).where('classifications.name = ?', 'Catamaran')) > 0)
  end
end
