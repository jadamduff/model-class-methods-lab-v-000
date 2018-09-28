class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.includes(:boats).includes(:classifications).where('classification.name = Catamaran')
  end
end
