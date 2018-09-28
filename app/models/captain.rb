class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boats).group('classification.id').having('name = Catamaran'))
  end
end
