class AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end

    def show
        set_author
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to author_path(@author)
        else
            render :new
        end
    end

    def edit
        set_author
    end
    
    def update
        set_author
        @author.update(author_params)
        redirect_to author_path(@author)
    end

    # def destroy
    #     set_author
    #     @author.destroy
    #     redirect_to authors_path
    # end

    private

    def set_author
        @author = Author.find_by(id: params[:id])
    end

    def author_params
        params.require(:author).permit(:name)
    end
end
