class Client < ActiveRecord::Base
  attr_accessible :dob, :first_name, :last_name, :middle_name, :ssn, :place, :ethnicity, :miratial_status, :elderly, :disabled, :occupation, :part_time_student, :full_time_student

end
