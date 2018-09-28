class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(includes(:boats).merge(:classifications).having('classification.name = Catamaran'))
  end
end
