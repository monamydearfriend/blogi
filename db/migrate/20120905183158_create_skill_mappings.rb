class CreateSkillMappings < ActiveRecord::Migration
  def change
    create_table :skill_mappings do |t|
      t.references :skill
      t.references :target, :polymorphic => true
      t.timestamps
    end
  end
end
