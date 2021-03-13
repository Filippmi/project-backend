class Project < ApplicationRecord
  belongs_to :lead


  # accepts_nested_attributes_for :lead
  def lead_attributes=(lead_name)
    self.lead = Lead.find_or_create_by(name: lead_name)
  end  
end
