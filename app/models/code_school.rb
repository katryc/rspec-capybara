class CodeSchool < ActiveRecord::Base
  def to_s
   name
  end
  has_many :users
end
