class AddDetailsToTweets < ActiveRecord::Migration[7.1]
  def change
    add_column :tweets, :name, :string
    add_column :tweets, :price, :integer
    add_column :tweets, :flavor, :string
    add_column :tweets, :detail, :text
    add_column :tweets, :genre, :string
    add_column :tweets, :season, :string
  end
end
