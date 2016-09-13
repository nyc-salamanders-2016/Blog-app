require 'rails_helper'

describe PostsController do

  describe "GET :index" do

    it "retutn status codee 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it 'rende index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it "return array of posts" do
      post = Post.create!(title: 'Rspec', body: 'Intro to rspec...')
      get :index
      expect(assigns(:posts)).to eq([post])
    end
  end
end
