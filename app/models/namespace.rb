class Namespace < ApplicationRecord
  validates :name, :assyst_svd, :owner_email, :technical_owner_email,
            :support_document, :support_document_uri, presence: true
  validates :arb, numericality: { greater_than_or_equal_to: 0 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "must be a JPG or PNG image"
  }

  VENDORS = %w(none bob larry)
  # validates :vendor_supported, inclusion: { in: VENDORS }
end
