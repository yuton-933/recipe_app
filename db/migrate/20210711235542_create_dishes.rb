class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :title, null:false #名前 
      t.integer :prep_time, default: 0, null: false  #下ごしらえの時間
      t.integer :cook_time, null:false #調理時間
      t.integer :sit_time, default: 0, null: false #発酵・漬け置き・馴染ませの時間
      t.integer :yield, null:false #何食分

      t.timestamps
    end
  end
end
