class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :owned_tasks, :requested_tasks

  def owned_tasks
    object.owned_tasks
  end

  def requested_tasks
    object.requested_tasks
  end
end
