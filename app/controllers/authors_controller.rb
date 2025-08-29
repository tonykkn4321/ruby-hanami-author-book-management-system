class AuthorsController < Hanami::Controller
  def index
    authors = AuthorRepository.new.all
    json AuthorSerializer.serialize(authors)
  end

  def show
    author = AuthorRepository.new.find(params[:id])
    json AuthorSerializer.serialize(author)
  end

  def create
    author = AuthorRepository.new.create(name: params[:name])
    json AuthorSerializer.serialize(author)
  end

  def update
    author = AuthorRepository.new.update(params[:id], name: params[:name])
    json AuthorSerializer.serialize(author)
  end

  def destroy
    AuthorRepository.new.delete(params[:id])
    status 204
  end
end
