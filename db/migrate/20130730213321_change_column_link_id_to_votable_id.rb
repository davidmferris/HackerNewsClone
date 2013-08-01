class ChangeColumnLinkIdToVotableId < ActiveRecord::Migration
  def change
    rename_column :votes, :link_id, :votable_id
  end
end
