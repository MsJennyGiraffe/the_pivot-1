require 'rails_helper'

RSpec.describe Style, type: :model do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  context "style not valid without validations" do
    style = Style.new(name: "")
    it "is not valid" do
      expect(style).to_not be_valid
    end
  end
end
