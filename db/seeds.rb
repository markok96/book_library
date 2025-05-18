# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Authors
author1 = Author.create!(name: "George Orwell", bio: "English novelist and essayist")
author2 = Author.create!(name: "J.K. Rowling", bio: "British author, best known for Harry Potter")
author3 = Author.create!(name: "Agatha Christie", bio: "English writer known for detective novels")
author4 = Author.create!(name: "Stephen King", bio: "American author of horror and supernatural fiction")
author5 = Author.create!(name: "Jane Austen", bio: "English novelist known for romantic fiction")
author6 = Author.create!(name: "Mark Twain", bio: "American writer and humorist")
author7 = Author.create!(name: "Isaac Asimov", bio: "American science fiction author and professor")

# Books
Book.create!(title: "1984", genre: "Dystopian", description: "A dystopian social science fiction novel", author: author1)
Book.create!(title: "Animal Farm", genre: "Political satire", description: "An allegorical novella", author: author1)
Book.create!(title: "Harry Potter and the Philosopher's Stone", genre: "Fantasy", description: "First book in the Harry Potter series", author: author2)
Book.create!(title: "Murder on the Orient Express", genre: "Mystery", description: "Detective Hercule Poirot solves a murder on a train", author: author3)
Book.create!(title: "The Shining", genre: "Horror", description: "A family experiences supernatural events at an isolated hotel", author: author4)
Book.create!(title: "Pride and Prejudice", genre: "Romance", description: "A classic romantic novel", author: author5)
Book.create!(title: "The Adventures of Tom Sawyer", genre: "Adventure", description: "A boy's adventures in a small town", author: author6)
Book.create!(title: "I, Robot", genre: "Science Fiction", description: "A collection of robot short stories", author: author7)
Book.create!(title: "Carrie", genre: "Horror", description: "A bullied girl discovers her telekinetic powers", author: author4)
Book.create!(title: "Emma", genre: "Romance", description: "A young woman tries to play matchmaker", author: author5)
Book.create!(title: "Adventures of Huckleberry Finn", genre: "Adventure", description: "A boy's journey down the Mississippi River", author: author6)
Book.create!(title: "Foundation", genre: "Science Fiction", description: "A saga of a galactic empire", author: author7)
Book.create!(title: "And Then There Were None", genre: "Mystery", description: "Ten strangers invited to an island are murdered one by one", author: author3)
