require "rails_helper"

RSpec.describe Admin, type: :model do
  let(:admin) { build(:admin) }

  it "has a valid factory" do
  expect(admin).to be_valid
  end

  it "is invalid without an email" do
  admin.email = nil
  expect(admin).not_to be_valid
  end

end