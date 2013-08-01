class ChangeColumnNameLinkIdToCommentableId < ActiveRecord::Migration
  def change
    rename_column :comments, :link_id, :commentable_id
  end
end
