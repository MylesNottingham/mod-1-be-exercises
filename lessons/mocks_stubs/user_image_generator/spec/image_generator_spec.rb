require 'rspec'
require './lib/image_generator'

RSpec.describe ImageGenerator do
  before :each do
    @image_generator = ImageGenerator.new(2500)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@image_generator).to be_a ImageGenerator
    end

    it 'has attributes' do
      expect(@image_generator.max_image_size).to eq 2500
    end
  end

  describe '#generate_images' do
    it 'generates an array of images' do
      allow(@image_generator).to receive(:rand).and_return(5)
      expect(@image_generator.generate_images).to eq(["image0", "image1", "image2", "image3", "image4"])
    end
  end

  describe '#change_max_size' do
    it 'changes the max image size' do
      allow(@image_generator).to receive(:rand).and_return(5)
      @image_generator.change_max_size(2)
      expect(@image_generator.max_image_size).to eq(10)
    end
  end
end
