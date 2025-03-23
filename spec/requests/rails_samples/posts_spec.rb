require 'rails_helper'

RSpec.describe "RailsSamples::Posts", type: :request do
  let(:new_post) { create(:post) }

  describe "GET /index" do
    it "returns http success" do
      get "/rails_samples/posts"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/rails_samples/posts/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/rails_samples/posts", params: { post: attributes_for(:post) }
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/rails_samples/posts/#{new_post.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/rails_samples/posts/#{new_post.id}/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /update" do
    let(:updated_post) { build(:post, title: "test2", content: "content2") }
    it "returns http success" do
      patch "/rails_samples/posts/#{new_post.id}", params: { post: updated_post.attributes }
      expect(response).to have_http_status(302)
    end
  end

  describe "DELETE /destroy" do
    it "returns http success" do
      delete "/rails_samples/posts/#{new_post.id}"
      expect(response).to have_http_status(302)
    end
  end
end
