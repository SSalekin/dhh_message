class Message < ApplicationRecord
  after_create_commit {BroadcastMessageJob.pefrorm_later self}
end
