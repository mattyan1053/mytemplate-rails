require 'rails_helper'

RSpec.describe "HotwiredSamples::Cats", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      Cat.create!(name: "Tama", age: 3)
      get hotwired_samples_cats_path
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      cat = Cat.create!(name: "Tama", age: 3)
      get hotwired_samples_cat_path(cat)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_hotwired_samples_cat_path
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      cat = Cat.create!(name: "Tama", age: 3)
      get edit_hotwired_samples_cat_path(cat)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Cat" do
        expect {
          post hotwired_samples_cats_path, params: { cat: { name: "Tama", age: 3 } }
        }.to change(Cat, :count).by(1)
      end

      it "redirects to the created cat" do
        post hotwired_samples_cats_path, params: { cat: { name: "Tama", age: 3 } }
        expect(response).to redirect_to(hotwired_samples_cat_path(Cat.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Cat" do
        expect {
          post hotwired_samples_cats_path, params: { cat: { name: nil, age: 3 } }
        }.to change(Cat, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post hotwired_samples_cats_path, params: { cat: { name: nil, age: 3 } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      it "updates the requested cat" do
        cat = Cat.create!(name: "Tama", age: 3)
        patch hotwired_samples_cat_path(cat), params: { cat: { name: "Pochi", age: 5 } }
        cat.reload
        expect(cat.name).to eq("Pochi")
        expect(cat.age).to eq(5)
      end

      it "redirects to the cat" do
        cat = Cat.create!(name: "Tama", age: 3)
        patch hotwired_samples_cat_path(cat), params: { cat: { name: "Pochi", age: 5 } }
        expect(response).to redirect_to(hotwired_samples_cat_path(cat))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        cat = Cat.create!(name: "Tama", age: 3)
        patch hotwired_samples_cat_path(cat), params: { cat: { name: nil, age: 3 } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested cat" do
      cat = Cat.create!(name: "Tama", age: 3)
      expect {
        delete hotwired_samples_cat_path(cat)
      }.to change(Cat, :count).by(-1)
    end

    it "redirects to the cats list" do
      cat = Cat.create!(name: "Tama", age: 3)
      delete hotwired_samples_cat_path(cat)
      expect(response).to redirect_to(hotwired_samples_cats_path)
    end
  end
end
