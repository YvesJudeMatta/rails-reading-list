require 'test_helper'

class DeletingBooksTest < ActionDispatch::IntegrationTest

	def setup
		@scifi = Genre.create!(name: 'Programming')
		@book = @scifi.books.create!(title: 'Progmatic Programmer', rating: 5)
	end

	test 'delete books' do
		delete "/books/#{@book.id}"

		assert_equal 204, response.status
	end
end
