class Item < ActiveRecord::Base

  after_create :set_alpha_numeric
 
  def set_alpha_numeric
    self.alpha_numeric = (self.id+15).to_s(62)
    self.save
  end

end
