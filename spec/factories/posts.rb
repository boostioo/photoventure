FactoryGirl.define do  
  factory :post do
    description "nofilter"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/ror.png', 'image/png')
  end
end  
