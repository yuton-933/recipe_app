class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :title, null:false #食材の名前 
      t.float :protein, null:false #100g当たりのタンパク量（g）
      t.float :fat, null:false #100g当たりの脂質量（g）
      t.float :carbs, null:false #100g当たりの炭水化物量（g）
      t.integer :cost, null:false #100gの価格 （円）
      t.boolean :allergen, default:false #アレルギー食品であるか
      t.boolean :meat, default:false #肉を含むか
      t.boolean :dairy_egg, default:false #乳製品,卵を含むか
      t.boolean :seafood, default:false #魚介を含むか
      t.boolean :other_animal, default:false #その他動物由来のものを含むか
      t.timestamps
    end
  end
end
