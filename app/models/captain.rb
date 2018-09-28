class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.where(joins(:boat).joins(:classifications).having('name = Catamaran'))
  end
end
