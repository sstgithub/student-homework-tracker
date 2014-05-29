require_relative '20140529023638_create_enrollment_table'

class FixupCreateEnrollmentTable < ActiveRecord::Migration
  def change
  	revert CreateEnrollmentTable
  end
end
