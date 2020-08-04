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

	# Returns the letters in the string.
	def letters
		the_letters = [] # empty array
		for i in 0..self.length - 1 do # range is 0 to char count - 1
			if self[i].match(/[a-zA-Z]/) # regex
				the_letters << self[i] # inherit
			end
		end
		the_letters.join
	end

	private

	# Returns content for palindrome testing.
	def processed_content
		self.letters.downcase
	end
end