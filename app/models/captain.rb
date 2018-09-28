class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.joins(:boats).group('captains.id').joins(boats: :classifications).where('classifications.name = ?', 'Catamaran'))
  end
end
