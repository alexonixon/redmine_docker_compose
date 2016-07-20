class Issue < ActiveRecord::Base
  rcrm_acts_as_taggable
  rcrm_acts_as_viewed
  # default_scope {where(:closed => false)}
  belongs_to :user
  validates_presence_of :description

  def save_without_validation
    save
  end
end

class SpecialIssue < Issue
end