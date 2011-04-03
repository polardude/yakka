class Task < ActiveRecord::Base
  validates :content, :presence => true
  after_initialize :default_values
  
  private
    def default_values
      self.done ||= false
    end
end
