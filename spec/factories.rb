# encoding: utf-8
FactoryGirl.define do
    sequence(:email){ |n| "vincent.walker#{n}@padrinobook.com"}
    factory :user do
      name "Vincent Walker"
      email 
      password "foo"
    end

    factory :job_offer do
        title "Padrino Engineer"
        location "Berlin"
        description "We want you ..."
        contact "recruter@awesome.de"
        time_start "0/01/2013"
        time_end "01/03/2013"
      end

  end