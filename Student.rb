class Student
  def initialize(name, cohort)
  @name = name
  @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return@cohort
  end

  def set_new_name(new_name)
    @name = new_name
  end

  def set_new_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk(information)
    return information
  end

  def say_favourite_language(fav_language)
    return "I love #{fav_language}"
  end


end
