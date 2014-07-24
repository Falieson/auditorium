class ChangeDescriptionFieldInProjectFeature < ActiveRecord::Migration
  def change
  	change_column :project_features, :description, :string
  end
end
