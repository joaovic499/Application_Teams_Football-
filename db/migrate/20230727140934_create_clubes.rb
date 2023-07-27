class CreateClubes < ActiveRecord::Migration[7.0]
  def change
    create_table :clubes do |t|
      t.string :Nome
      t.string :Sigla
      t.string :Pais
      t.string :url_image
      t.integer :nivel

      t.timestamps
    end
  end
end
