class DeleteReferencesToList < ActiveRecord::Migration[7.1]
  def change
    remove_reference :movies, :list, foreign_key: true
  end
end
