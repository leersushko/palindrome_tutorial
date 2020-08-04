require "jsager_palindrome/version"

module JsagerPalindrome
  class Error < StandardError; end
  # Your code goes here...
end

class String

	# Returns true for a palindrome, false otherwise.
	def palindrome?
		processed_content == processed_content.reverse
	end

	# Returns the letters in the string. Old code.
=begin
	def letters
		the_letters = [] # empty array
		letter_regex = /[a-z]/i
		self.chars.each do |character| # range is 0 to char count - 1
			if character.match(letter_regex) # regex
				the_letters << character # inherit
			end
		end
		the_letters.join
	end
=end

	# Returns the letters in the string. New code.
	def letters
		self.chars.select { |c| c.match(/[a-z]/i) }.join
	end

	private

	# Returns content for palindrome testing.
	def processed_content
		self.letters.downcase
	end
end