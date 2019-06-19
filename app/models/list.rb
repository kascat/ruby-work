class List < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :items
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, reject_if: lambda { |a| a[:name].blank? }, allow_destroy: true
end
