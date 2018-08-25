class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.string :code
      t.text :applicant
      t.text :demanded
      t.references :user

      t.timestamps
    end
  end
end
