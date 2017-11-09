class CreatePeopleTests < ActiveRecord::Migration
  def change
    create_table :people_tests, id: false do |t|
      t.integer :person_id, index: true
      t.integer :test_id, index: true
    end
  end
end
