class CreateCollegeEligibilityCriteria < ActiveRecord::Migration[7.0]
  def change
    create_table :college_eligibility_criteria do |t|
      t.references :college, null: false, foreign_key: true
      t.float :minimum_eligibility_percentage
      t.string :year

      t.timestamps
    end
  end
end
