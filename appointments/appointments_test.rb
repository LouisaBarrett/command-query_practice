gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require 'time'
require_relative 'appointments'

class AppointmentsTest < Minitest::Test
  def test_no_appointments
    slots = Appointments.new
    assert_nil slots.earliest
  end

  def test_earliest_of_one
    # skip
    slots = Appointments.new
    t1 = Time.new(2014, 3, 14, 4, 30)
    slots.schedule t1
    assert_equal t1, slots.earliest
  end

  def test_earliest_of_several
    # skip
    slots = Appointments.new
    t1 = Time.new(2014, 6, 14, 16, 30)
    t2 = Time.new(2014, 2, 28, 11)
    t3 = Time.new(2014, 2, 28, 8, 30)
    slots.schedule t1
    slots.schedule t2
    slots.schedule t3
    assert_equal t3, slots.earliest
  end
end
