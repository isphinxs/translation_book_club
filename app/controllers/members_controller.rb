class MembersController < ApplicationController
    def index
        @members = Member.all
    end

    def show
        set_member
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.new(member_params)
        if @member.save
            redirect_to member_path(@member)
        else
            render :new
        end
    end

    def edit
        set_member
    end
    
    def update
        set_member
        @member.update(member_params)
        redirect_to member_path(@member)
    end

    # def destroy
    #     set_member
    #     @member.destroy
    #     redirect_to members_path
    # end

    private

    def set_member
        @member = Member.find_by(id: params[:id])
    end

    def member_params
        params.require(:member).permit(:name)
    end
end
