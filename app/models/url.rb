class Url < ApplicationRecord
    validates_presence_of :full_url
    validates_presence_of :short_url
end
