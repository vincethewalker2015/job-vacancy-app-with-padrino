require 'spec_helper'

#RSpec.describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
#end

describe "User Model" do
  let(:user) { User.new }

  it 'can be created' do
    expect(user).not_to be_nil
  end
  
  it 'fresh user should have no offers' do
    expect(user.job_offers.size).to eq 0
  end

  it 'have job-offers' do
    user.job_offers.build(job_offer)
    expect(user.job_offers.size).to eq 1
  end

  it 'has job-offers' do
    user.job_offers.build(attributes_for(:job_offer))
    expect(user.job_offers.size).to eq 1
  end

end
