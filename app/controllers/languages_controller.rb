class LanguagesController < ApplicationController
    def index
        @languages = Language.all
    end

    def show
        set_language
    end

    def new
        @language = Language.new
    end

    def create
        @language = Language.new(language_params)
        if @language.save
            redirect_to language_path(@language)
        else
            render :new
        end
    end

    def edit
        set_language
    end
    
    def update
        set_language
        @language.update(language_params)
        redirect_to language_path(@language)
    end

    # def destroy
    #     set_author
    #     @author.destroy
    #     redirect_to authors_path
    # end

    private

    def set_language
        @language = Language.find_by(id: params[:id])
    end

    def language_params
        params.require(:language).permit(:name)
    end
end
