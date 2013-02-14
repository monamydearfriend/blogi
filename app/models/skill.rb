class Skill < ActiveRecord::Base
   has_many :skill_mappings
   has_many :users, :through => :skill_mappings, :source => :user, :conditions => "skill_mappings.target_type = 'User'"
   has_many :companies, :through => :skill_mappings, :source => :company, :conditions => "skill_mappings.target_type = 'Company'"

   attr_accessible :name
end
