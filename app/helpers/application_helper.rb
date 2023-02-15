module ApplicationHelper
  def local_user_time(datetime_object)
    @timezone = current_user.time_zone
    unless datetime_object.respond_to?(:in_time_zone)
      datetime_object = Time.parse(datetime_object.to_s)
    end
    datetime_object.in_time_zone(@timezone)
  end
end
