require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')


book_repository = BookRepository.new

book_repository.all.each { |record|
    puts "#{record.id}  - #{record.title} - #{record.author_name}"

}
# class BookRepository
#     def all
#     sql = 'SELECT id, author_name FROM books;'
#     result = DatabaseConnection.exec_params(sql, [])
#     books = []
    
#     result_set.each  {|record|
#         book = Book.new
#         book.id = record["id"]
#         book.title = record["title"]
#         book.author_name = record["author_name"]

#     books << book
#     }
#     books
#     end
# end