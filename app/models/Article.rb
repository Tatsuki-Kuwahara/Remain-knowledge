class Article < ApplicationRecord
  belongs_to :task
  has_many :tags, dependent: :destroy

  accept_nested_attributes_for :tags, allow_destroy: true
end