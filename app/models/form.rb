class Form < ActiveRecord::Base
  validates :name, presence: true
  validates :structure, presence: true
end
