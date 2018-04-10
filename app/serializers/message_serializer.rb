class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :nutritionist_id, :parent_message, :subject, :body, :sender_type, :sender_id, :created_at, :read
  belongs_to :user
  belongs_to :nutritionist
end
