class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # anyone can view any booking:
      # scope.all

      # display only bookings where user is renter
      scope.where(user: user)
      # display only bookings where user is island owner??
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    true
  end

  def edit?
    update?
  end

  def destroy?
    true
  end
end
