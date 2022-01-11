class CreateNamespace < ActiveRecord::Migration[6.1]
  def change
    create_table :namespaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
