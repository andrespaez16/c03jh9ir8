class ActorsController < ApplicationController

def index
    @actors=Actor.all 
 end
 
 private
 
 def actor_params
     params.require(:actor).permit(:image_url,:name,:bio,:alive,:death_date,:death_place,:birth_place,:birth_date)   
 end
 
 
end
