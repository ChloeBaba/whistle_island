class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # anyone can view any island
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    # - user = current_user from Devise
    # - record = @island
    # If I did create the Island => true
    # Otherwise => false
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
