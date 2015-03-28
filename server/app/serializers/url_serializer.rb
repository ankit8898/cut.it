class UrlSerializer < ActiveModel::Serializer
  attributes :id,:name,:code,:shortened_url,:visits
end
