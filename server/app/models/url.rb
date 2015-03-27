class Url < ActiveRecord::Base

  validates :name, format: URI::regexp(%w(http https)),uniqueness: true
  validates :code, uniqueness: true

  after_create :shorten_it

  def shorten_it
    self.code = build_code
    save!
  end

  def shortened_url
    "#{base_url}/#/#{code}"
  end

  def build_code
    sha_256.slice(0..3)
  end

  def sha_256
    Digest::SHA256.hexdigest(name)
  end

  def base_url
    Rails.configuration.base_url
  end
end
