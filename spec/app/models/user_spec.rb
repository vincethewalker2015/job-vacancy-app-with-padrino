require 'spec_helper'

#RSpec.describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
#end

Rspec.describe "User Model" do
  let(:user) { build(:user) }
  let(:user_second) { build(:user)}
  #let(:user) { FactoryGirl.build(:user) }
  #let(:job_offer) { {:title => 'Padrino Engineer', :location => 'Berlin',
    #:description => 'Come to this great place'} }

    describe "when name is already used" do
      it 'should not be saved' do
        User.destroy_all
        user.save
        user_second.name = user.name
        user_second.save
        expect(user_second.valid?).to be_falsey
      end
    end

  it 'can be created' do
    expect(user).not_to be_nil
  end
  
  it 'fresh user should have no offers' do
    expect(user.job_offers.size).to eq 0
  end

  it 'have job-offers' do
    user.job_offers.build(FactoryGirl.attributes_for(:job_offer))
    expect(user.job_offers.size).to eq 1
  end

  it 'has job-offers' do
    user.job_offers.build(FactoryGirl.attributes_for(:job_offer))
    expect(user.job_offers.size).to eq 1
  end

  it 'have no blank name' do
    user.name = ""
    expect(user.valid?).to be_falsey
  end
  
  describe "email address" do
    it 'valid' do
      adresses = %w[thor@marvel.de hero@movie.com]
      adresses.each do |email|
        user.email = email
        user_second.email= email
        expect(user_second.valid?).to be_truthy
      end
    end
  
    it 'not valid' do
      adresses = %w[spamspamspam.de heman,test.com]
      adresses.each do |email|
        user_second.email= email
        expect(user_second.valid?).to be_falsey
      end
    end

  

end
