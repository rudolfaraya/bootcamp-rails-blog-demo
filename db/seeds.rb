# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
100.times do
  # default_user
  default_user = User.find_or_create_by(email: "unknown@example.com") do |user|
    user.password = SecureRandom.hex(8)
  end
  # Genera un título con 6 palabras
  title = Faker::Lorem.sentence(word_count: 6)

  # Genera 3 párrafos para el cuerpo, cada uno con 5 oraciones
  paragraphs = Array.new(3) { Faker::Lorem.paragraph(sentence_count: 5) }

  body = "**#{title}**\n\n#{paragraphs.join("\n\n")}\n\n*Fin del artículo.*"

  Article.create!(title: title, body: body, user_id: default_user.id)
end
