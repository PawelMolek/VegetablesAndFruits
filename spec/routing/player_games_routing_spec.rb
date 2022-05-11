require "rails_helper"

RSpec.describe PlayerGamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/player_games").to route_to("player_games#index")
    end

    it "routes to #new" do
      expect(get: "/player_games/new").to route_to("player_games#new")
    end

    it "routes to #show" do
      expect(get: "/player_games/1").to route_to("player_games#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/player_games/1/edit").to route_to("player_games#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/player_games").to route_to("player_games#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/player_games/1").to route_to("player_games#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/player_games/1").to route_to("player_games#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/player_games/1").to route_to("player_games#destroy", id: "1")
    end
  end
end
