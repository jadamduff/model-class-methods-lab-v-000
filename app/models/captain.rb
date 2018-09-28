class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.joins(boats: :classifications).where('classifications.name = ?', 'Catamaran')
  end

  def self.sailors
    Captain.joins(boats: :classifications).where('classifications.name = ?', 'Sailboat').uniq
  end

  def self.sailors
    Captain.joins(boats: :classifications).where('classifications.name = ?', 'Motorboat').uniq
  end

  def self.talented_seafarers
    where('id IN (?)', self.sailors.pluck(:id) && self.mo

    joins(boats: :classifications).group('boats.captain_id').where('classifications.name = ? AND classifications.name = ?', 'Motorboat', 'Sailboat').uniq
  end
end
