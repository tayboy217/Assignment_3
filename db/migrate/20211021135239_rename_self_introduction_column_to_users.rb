class RenameSelfIntroductionColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :self_introduction, :introduction
  end
end
