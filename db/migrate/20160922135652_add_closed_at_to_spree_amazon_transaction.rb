class AddClosedAtToSpreeAmazonTransaction < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_amazon_transactions, :closed_at, :datetime
  end
end
