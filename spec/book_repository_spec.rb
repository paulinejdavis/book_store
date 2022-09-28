require_relative '../lib/book_repository.rb'

RSpec.describe BookRepository do

    def reset_albums_table
        seed_sql = File.read('spec/seeds.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
        connection.exec(seed_sql)
    end

    before(:each) do
        reset_books_table
    end

    it 'returns book objects' do
        repo = BookRepository.new
        albums = repo.all

        expect(books.length).to eq(2)

        expect(books[0].id).to eq("1")
        expect(books[0].title).to eq("Mrs Dalloway")
    end
end