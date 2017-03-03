# This migration comes from local (originally 20160328222229)
class CreateFileDownloadStats < ActiveRecord::Migration
  def change
    create_table :file_download_stats do |t|
      t.datetime :date
      t.integer :downloads
      t.string :file_id

      t.timestamps null: false
    end
    add_index :file_download_stats, :file_id
  end
end
