class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.joins(boats: :classifications).where('classifications.name = ?', 'Catamaran')
  end

  def self.sailors
    Captain.joins(boats: :classifications).where('classifications.name = ?', 'Sailboat').uniq
  end

  def self.talented_seafarers
    Captain.joins(boats: :classifications).group('captain_id').having('classifications.name = ? AND classifications.name = ?', 'Motorboat', 'Sailboat').uniq
  end
end
