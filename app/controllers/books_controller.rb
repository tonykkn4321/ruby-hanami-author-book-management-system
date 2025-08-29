class BooksController < Hanami::Controller
  def index
    books = BookRepository.new.all
    json BookSerializer.serialize(books)
  end

  def show
    book = BookRepository.new.find(params[:id])
    json BookSerializer.serialize(book)
  end

  def create
    book = BookRepository.new.create(title: params[:title], author_id: params[:author_id])
    json BookSerializer.serialize(book)
  end

  def update
    book = BookRepository.new.update(params[:id], title: params[:title], author_id: params[:author_id])
    json BookSerializer.serialize(book)
  end

  def destroy
    BookRepository.new.delete(params[:id])
    status 204
  end
end
