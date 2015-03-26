class Url < ActiveRecord::Base
  validates :name, format: URI::regexp(%w(http https))
end
