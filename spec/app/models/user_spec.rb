require 'spec_helper'

#RSpec.describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
#end

describe "User Model" do
  let(:user) { User.new }
  it 'can be created' do
    expect(user).not_to be_nil
  end
end
