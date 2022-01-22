class AddFieldsToNamespace < ActiveRecord::Migration[6.1]
  def change
    add_column :namespaces, :arb, :string, default: '0'
    add_column :namespaces, :dept_name, :string
    add_column :namespaces, :assyst_svd, :string
    add_column :namespaces, :vendor_supported, :boolean
    add_column :namespaces, :owner_email, :string
    add_column :namespaces, :technical_owner_email, :string
    add_column :namespaces, :support_document, :string
    add_column :namespaces, :support_document_uri, :string
  end
end
