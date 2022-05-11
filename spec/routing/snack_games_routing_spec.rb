require "rails_helper"

RSpec.describe SnackGamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/snack_games").to route_to("snack_games#index")
    end

    it "routes to #new" do
      expect(get: "/snack_games/new").to route_to("snack_games#new")
    end

    it "routes to #show" do
      expect(get: "/snack_games/1").to route_to("snack_games#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/snack_games/1/edit").to route_to("snack_games#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/snack_games").to route_to("snack_games#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/snack_games/1").to route_to("snack_games#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/snack_games/1").to route_to("snack_games#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/snack_games/1").to route_to("snack_games#destroy", id: "1")
    end
  end
end
