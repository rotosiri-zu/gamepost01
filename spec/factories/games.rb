FactoryBot.define do
  factory :game do
    name                  {"テスト"}
    image                 { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/sky-1253086_1280.jpg'))}
    text                  {"サンプル"}
    platform              {"ps4"}
    genre                 {"rpg"}
    user_id               {1}
  end
end
