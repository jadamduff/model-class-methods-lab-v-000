class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.joins(boats: :classifications).group('classification.name').having('name = Catamaran')
  end
end
