require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(100..999)
    user = User.new(nickname: nickname, kind: kind, level: level)
    
    expect(user).to_not be_valid
  end

  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(100..999)
    user = User.create(nickname: nickname, kind: kind, level: level)

    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end


#RSpec.describe "Users", type: :request do
#  describe "GET /users" do
#    it "works! (now write some real specs)" do
#      get users_path
#      expect(response).to have_http_status(200)
#    end
#  end
#end
