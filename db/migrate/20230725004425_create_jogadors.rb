class CreateJogadors < ActiveRecord::Migration[7.0]
  def change
    create_table :jogadors do |t|
      t.string :nome
      t.string :nacionalidade
      t.integer :idade
      t.string :posicao
      t.integer :overall
      t.string :url_image

      t.timestamps
    end
  end
end
