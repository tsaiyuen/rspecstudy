require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    expect(User.create(nickname: 'Chronos', kind: :wizard, level: 100)).to_not be_valid
  end

  it "returns the correct hero title" do
    user = User.create(nickname: 'Chronos', kind: :wizard, level: 20)
    expect(user.title).to eq( 'wizard Chronos #20')
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