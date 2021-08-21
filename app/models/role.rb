class Role < ApplicationRecord
  # restrict_with_exception option will cause an ActiveRecord::DeleteRestrictionError
  # exception to be raised if you try to delete a Role record with associated Users.
  has_many :user_roles
  has_many :users, through: :user_roles, dependent: :restrict_with_exception
  accepts_nested_attributes_for :users
end
