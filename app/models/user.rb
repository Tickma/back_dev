class User < ApplicationRecord
    belongs_to:prefecture
    has_many:events
end
