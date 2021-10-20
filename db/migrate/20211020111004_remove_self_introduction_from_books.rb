class RemoveSelfIntroductionFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :self_introduction, :text
  end
end
