# code here!
require 'pry'
class School
attr_accessor
attr_reader :school, :add_student, :roster


  def initialize(school)
    @school = school
    @roster = {}
  end

  # def roster

  #   @roster = {@grade} <<[@name]}
  #   #@roster = Hash.new { |hash, key| hash[key] = @grade[@name] }
  #   #@roster = {@grade[@name]}

  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster[@grade] ||= []# defines key in hash
    @roster[@grade] << @name
  end
#binding.pry
  def grade(grade)
    @roster[grade]
  end

  def sort
    collect = {} #new array
    @roster.map do |grade, name| #map through @roster
      collect[grade] = name.sort #puts grade as key and then sorts by name
    end
  collect # new hash that is soted by grade and name
end


end
