require 'factory_girl'

FactoryGirl.define do
    factory :owner do
        first_name "Joey"
        last_name "Phelps"
        address "PO Box 24866"
        city "Doha"
        country "QA"
        email "joey@joeyphelps.com"
        phone "97477155015"
        active true
    end
end