class PublishersController < ApplicationController
    def index
        @publishers = Publisher.all
    end

    def show
        set_publisher
    end

    def new
        @publisher = Publisher.new
    end

    def create
        @publisher = Publisher.new(publisher_params)
        if @publisher.save
            redirect_to publisher_path(@publisher)
        else
            render :new
        end
    end

    def edit
        set_publisher
    end
    
    def update
        set_publisher
        @publisher.update(publisher_params)
        redirect_to publisher_path(@publisher)
    end

    # def destroy
    #     set_author
    #     @author.destroy
    #     redirect_to authors_path
    # end

    private

    def set_publisher
        @publisher = Publisher.find_by(id: params[:id])
    end

    def publisher_params
        params.require(:publisher).permit(:name)
    end
end
