class ActorsController < ApplicationController

def index
    @actors=Actor.all 
 end
 def new
 end
 def create
    Actor.create(actor_params)
redirect_to actors_path 
end
 private
 
 def actor_params
     params.require(:actor).permit(:image_url,:name,:bio,:alive,:death_date,:death_place,:birth_place,:birth_date)   
 end
 
 
end
