class Company < ActiveRecord::Base
   has_many :skill_mappings, :as => :target
   has_many :skills, :through => :skill_mappings
   attr_accessible :name
  
  accepts_nested_attributes_for :skills
  
  def autosave_associated_records_for_skill
    # Find or create the author by name
    if new_author = Author.find_by_name(author.name) then
      self.author = new_author
    else
      self.author.save!
    end
  end

end
