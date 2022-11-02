require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "User validations" do
    it "should be valid for a user with all fields filled out" do
      @valid_user = User.new(email: "test@test.com", password: "testtest", title: "Mr", first_name: "Jack", last_name: "Sparrow")
      @valid_user.save
      expect(@valid_user.valid?).to be true
    end

    it "should be invalid for a user without a title" do
      @invalid_user = User.new(email: "test@test.com", password: "testtest", first_name: "Jack", last_name: "Sparrow")
      @invalid_user.save
      expect(@invalid_user.valid?).to be false
    end
  end
end
