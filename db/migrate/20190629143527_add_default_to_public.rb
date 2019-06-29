class AddDefaultToPublic < ActiveRecord::Migration[6.0]
  def change
    change_column_default :reviews, :public, true
    change_column_default :favorites, :public, true
  end
end
