class ConnectionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    !user.professional
  end

  def destroy?
    true
  end
end
