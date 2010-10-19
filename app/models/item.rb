class Item < ActiveRecord::Base

  after_create :set_hex
 
  def set_hex
    self.hex = (self.id+15).to_s(16)
    self.save
  end

end
