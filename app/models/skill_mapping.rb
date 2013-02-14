class SkillMapping < ActiveRecord::Base
  belongs_to :skill
  belongs_to :target, :polymorphic => true

  attr_accessible :skill_id, :target_id,:target_type
end
