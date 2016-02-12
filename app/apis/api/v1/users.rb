module API
  module V1
    class Users < Grape::API
      resource :users do
        get do
          puts "a"
          present User.all, with: Entity::V1::UsersEntity
        end
      end
    end
  end
end
