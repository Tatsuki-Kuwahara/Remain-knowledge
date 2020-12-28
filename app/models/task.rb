class Task < ApplicationRecord
  has_many :articles, dependent: :destroy
  belongs_to :user

  accept_nested_attributes_for :articles, allow_destroy: true
  validates :name, presence: true
end