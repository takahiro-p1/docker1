require 'rails_helper'

RSpec.describe User, type: :model do
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  it "should be valid" do
    setup
    @user.valid?
  end

  it "名前を空にしてはいけない" do
    setup
    @user.name = ""
    @user.valid?
  end

  it "Eメールは空にしてはいけない" do
    setup
    @user.email = ""
    @user.valid?
  end

  it "名前は５０文字以下である" do
    setup
    @user.name = "a" * 51
    @user.valid?
  end

  it "Eメールは２５５文字以下である" do
    setup
    @user.email = "a" * 256
    @user.valid?
  end

  it "ユーザーはユニークである" do
    setup
    dup_user = @user.dup
    @user.save
    assert_not dup_user.valid?
  end
end
