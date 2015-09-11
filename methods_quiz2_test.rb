require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal 11, @m.without_doubles(5, 6, false)
		assert_equal 8, @m.without_doubles(5, 3, true)
		assert_equal 7, @m.without_doubles(3, 3, true)
		assert_equal 6, @m.without_doubles(3, 3, false)
		assert_equal 13, @m.without_doubles(5, 8, false)
		assert_equal 8, @m.without_doubles(5, 3, true)
	end

	def test_max_maybe
		assert_equal 3, @m.max_maybe(2, 3)
		assert_equal 18, @m.max_maybe(7, 18)
		assert_equal 0, @m.max_maybe(5, 5)
		assert_equal 6, @m.max_maybe(16, 6)
		assert_equal 24, @m.max_maybe(24, 6)
	end

	def test_squirrels_play?
		assert_equal false, @m.squirrels_play?(7, true)
		assert_equal true, @m.squirrels_play?(67, false)
		assert_equal true, @m.squirrels_play?(100, true)
		assert_equal false, @m.squirrels_play?(96, false)
		assert_equal false, @m.squirrels_play?(94, false)
	end

	def test_red_ticket
		assert_equal 1, @m.red_ticket(2, 0, 1)
		assert_equal 0, @m.red_ticket(1, 1, 2)
		assert_equal 10, @m.red_ticket(2, 2, 2)
		assert_equal 5, @m.red_ticket(1, 1, 1)
	end
end
