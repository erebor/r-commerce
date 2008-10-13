class Category < ActiveRecord::Base
  has_many :items
  
  validates_presence_of :name, :description
  validates_uniqueness_of :name
  
  
  def sub_categories
    sub_categories = Array.new
    Category.find_all_by_parent_id(self.id).each {|c| sub_categories << c}
    sub_categories
  end
  
  def parent_category
    unless self.parent_id.nil?
      parent_category = Category.find(self.parent_id)
    else
      parent_category = nil
    end
    parent_category
  end
  
end
