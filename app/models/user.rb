class User < ActiveRecord::Base
  has_many :tasks, foreign_key: :owner
  has_many :tasks, foreign_key: :requester
  validates :email, format: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i
  validates :name, presence: true
end
