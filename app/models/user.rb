class User < ApplicationRecord
    belongs_to:prefecture
    has_many:events
    has_many:event_user
end
