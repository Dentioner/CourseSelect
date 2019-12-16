 module CourseHelper
  def week_transform(date)
    if date.include? "周一"
      return '1'
    elsif date.include? "周二"
      return '2'
    elsif date.include? "周三"
      return '3'
    elsif date.include? "周四"
      return '4'
    elsif date.include? "周五"
      return '5'
    elsif date.include? "周六"
      return '6'
    elsif date.include? "周日"
      return '7'
    else
      return '0'
  end

  def get_time(course, c_time)
    c_time == '' or week_transform(course['course_time']) == c_time
  end

  def get_name(course, c_name)
    (c_name == '') or (course['name'].include? c_name) or (c_name.nil?)
  end

  def get_type(course, c_type)
    c_type == '' or course['course_type'] == c_type
  end

  def get_course_array(course, c_type)
    course.map {|course| course[c_type]} .sort.uniq
  end
end