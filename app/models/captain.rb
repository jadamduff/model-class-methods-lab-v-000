class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).group('classification.name').having('classification.name = Catamaran'))
  end
end
