class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        set_book
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_path(@book)
        else
            render :new
        end
    end

    def edit
        set_book
    end
    
    def update
        set_book
        @book.update(book_params)
        redirect_to book_path(@book)
    end

    # def destroy
    #     set_author
    #     @author.destroy
    #     redirect_to authors_path
    # end

    private

    def set_book
        @book = Book.find_by(id: params[:id])
    end

    def book_params
        params.require(:book).permit(:name, :language, :member, :publisher, :author)
    end
end
