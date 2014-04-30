# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :facet do
    title "Nutrition"
    facet_type 1
  end

  factory :qualitative_facet, class: Facet do
    title "Nutrition"
    facet_type 1
  end

  factory :count_facet, class: Facet do
    title "Cups of Water"
    facet_type 2
  end

  factory :decimal_facet, class: Facet do
    title "Weight"
    facet_type 3
  end
end
