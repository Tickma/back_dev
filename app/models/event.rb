class Event < ApplicationRecord
    belongs_to:user
    belongs_to:prefecture
    has_many:event_user
end
