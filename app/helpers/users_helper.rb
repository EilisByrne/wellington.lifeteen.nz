module UsersHelper
  def privileged_user?
    user_signed_in? && Role::PRIVILEGED.include?(current_user.role.name)
  end

  def can_edit?(user)
    user_signed_in? && user == current_user || privileged_user?
  end
end
