class Task < ActiveRecord::Base
  belongs_to :category
  
  validates :content, :presence => true
  after_initialize :default_values
  
  private
    def default_values
      self.category_id ||= 1
    end
end
