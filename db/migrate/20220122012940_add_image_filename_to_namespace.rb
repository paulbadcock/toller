class AddImageFilenameToNamespace < ActiveRecord::Migration[6.1]
  def change
    add_column :namespaces, :image_file_name, :string, default: 'placeholder.png'
  end
end
