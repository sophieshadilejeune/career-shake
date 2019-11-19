class ProfListingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.professional
  end

  def new?
    user.professional
  end

  def index?
    true
  end

  def edit?
    user.professional
  end

  def update?
    user.professional
  end
end
