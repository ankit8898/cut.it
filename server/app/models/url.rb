class Url < ActiveRecord::Base

  validates :name, format: URI::regexp(%w(http https))

  after_create :shorten_it

  def shorten_it
    self.shortened = "#{base_url}/#{code}"
    save!
  end

  def shortened_url
    "#{base_url}/#{code}"
  end

  def code
    sha_256.slice(0..3)
  end

  def sha_256
    Digest::SHA256.hexdigest(name)
  end

  def base_url
    "http://ktit.co"
  end
end
