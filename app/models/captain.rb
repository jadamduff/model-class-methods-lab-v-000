class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.joins(boats: :classifications).group('classifications.name').where('classifications.name = ?', 'Catamaran')
  end
end
