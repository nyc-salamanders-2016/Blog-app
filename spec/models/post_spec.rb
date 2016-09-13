require 'rails_helper'

describe Post do
  it "valid if title and body present" do
    post = Post.new(title: 'Rspec', body: 'Intro to rspec...')
    expect(post).to be_valid
  end

  it 'invalid if post does have title' do
    post = Post.new(body: "invalid post")
    post.valid?
    expect(post.errors[:title]).to include("can't be blank")
  end

end
