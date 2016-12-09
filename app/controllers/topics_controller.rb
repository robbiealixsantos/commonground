class TopicsController < ApplicationController

# before_action :set_pet, only: [:show, :edit, :update, :destroy]

def index
  @topics = Topic.all
end

# def show
# end

# def new
#   @pet = Pet.new
# end

# def create
#   @pet = Pet.new(pet_params)
#   if @pet.save
#     redirect_to(action: 'index')
#   else
#     render :new
#   end
# end

# def edit
# end

# def update
#   if @pet.update_attributes(pet_params)
#     redirect_to(action: 'show', id: @pet.id)
#   else
#     render :edit
#   end
# end

# def destroy
#   @pet.destroy
#   redirect_to(action: 'index')
# end

# private

#   def pet_params
#     params.require(:pet).permit(:name, :breed, :age, :cute)
#   end

#   def set_pet
#     @pet = Pet.find(params[:id])
#   end

end