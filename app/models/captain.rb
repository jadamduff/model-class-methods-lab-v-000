class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.includes(:boats).merge(:classifications).where('classification.name = Catamaran')
  end
end
