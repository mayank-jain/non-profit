class AddBasicInfoToClient < ActiveRecord::Migration
  def change
    add_column :clients, :middle_name, :string
    add_column :clients, :ssn, :string
    add_column :clients, :place, :string
    add_column :clients, :ethnicity, :string
    add_column :clients, :miratial_status, :string
    add_column :clients, :elderly, :string
    add_column :clients, :disabled, :string
    add_column :clients, :occupation, :string
    add_column :clients, :part_time_student, :string
    add_column :clients, :full_time_student, :string
  end
end
