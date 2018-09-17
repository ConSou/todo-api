class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :completed
end
