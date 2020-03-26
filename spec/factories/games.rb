FactoryBot.define do
  factory :game do
    name                  {"テスト"}
    image                 { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/sky-1253086_1280.jpg'))}
    text                  {"サンプル"}
    platform              {"PS4"}
    genre                 {"RPG"}
    user_id               {1}
  end
end
