class AddClubeToJogadors < ActiveRecord::Migration[7.0]
  def change
    add_reference :jogadors, :Clube, :clube_id foreign_key: true, null: true
  end
end
