class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :owner, :requester, :children

  def children
    object.children
  end
end
