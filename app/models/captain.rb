class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).group('boats.captain_id').having('classifications.name = Catamran'))
  end
end
