def to_pretty(time)
  abs_time = Time.now - time

  if abs_time < 1
    return "just now"
  elsif abs_time < 60
    abs_time = abs_time.floor
    if abs_time == 1
      return "a second ago"
    else
      return "#{abs_time} seconds ago"
    end
  elsif abs_time < 60*60
    abs_time = (abs_time/60).floor
    if abs_time == 1
      return "a minute ago"
    else
      return "#{abs_time} minutes ago"
    end
  elsif abs_time < 60*60*24
    abs_time = (abs_time/(60*60)).floor
    if abs_time == 1
      return "an hour ago"
    else
      return "#{abs_time} hours ago"
    end
  elsif abs_time < 60*60*24*7
    abs_time = (abs_time/(60*60*24)).floor
    if abs_time == 1
      return 'a day ago'
    else
      return "#{abs_time} days ago"
    end
  else
    abs_time = (abs_time/(60*60*24*7)).floor
    if abs_time == 1
      return 'a week ago'
    else
      return "#{abs_time} weeks ago"
    end

  end
end