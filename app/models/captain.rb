class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).group('classifications.id').having('classifications.ame = Catamaran'))
  end
end
