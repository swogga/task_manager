# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Очистим таблицы перед созданием (чтобы не было дублей)
User.destroy_all
Task.destroy_all

# Создадим несколько пользователей
user1 = User.create!(name: "Сукс", email: "suks@example.com")
user2 = User.create!(name: "Алексей", email: "alex@example.com")

# Создадим задачи для первого пользователя
Task.create!(title: "Сделать домашку", description: "По Rails", status: "new", user: user1)
Task.create!(title: "Выучить миграции", description: "Разобраться с add_reference", status: "in_progress", user: user1)

# Задачи для второго пользователя
Task.create!(title: "Купить продукты", description: "Молоко, хлеб, сыр", status: "new", user: user2)
Task.create!(title: "Сходить в спортзал", description: "Тренировка на ноги", status: "done", user: user2)

puts "Seed данные загружены: #{User.count} пользователей, #{Task.count} задач."

