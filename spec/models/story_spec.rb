require 'rails_helper'
require 'open-uri'

RSpec.describe Story, type: :model do
  let(:blank_story_wo_image) {Story.create(title: "", body: "")}
  let(:no_image_story) {Story.new(title: "", body: "")}
  let(:image_story) {Story.new(title: "Covid-19 Cancels NBA Season", body: 
  "On March 25, the NBA Season was canceled")}

  # Model Validations
  it 'validates presence of title, body, and image' do
    expect(blank_story_wo_image).not_to be_valid
  end

  it 'validates presence of image' do
    expect(no_image_story).not_to be_valid
  end

  it 'saves an image' do 
    image = open(
      'https://meteor-app-seeds.s3-us-west-1.amazonaws.com/DeangeloRussell.png')
    image_story.image.attach(
      io: image,
      filename: 'image.png'
    )
    expect(image_story).to be_an_instance_of(ActiveStorage::Attachment::One)
  end

  # Association Testing
  describe 'associations' do
    it {should have_many{:claps}}
  end

  # Error Message Tests
  it 'fails validation with no image expecting a specific message' do
    no_image_story.valid?
    expect(no_image_story.errors[:name]).to include('Must have an image attached')
  end
end
