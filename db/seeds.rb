# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
recipes = Recipe.create([{ title: 'Ensaladilla Rusa' },
                         { title: 'Puré de verduras' },
                         { title: 'Taboulé con calabaza' },
                         { title: 'Ternera a la cerveza' },
                         { title: 'Pollo a la coca-cola' },
                         { title: 'Espaghettis carbonara' },
                         { title: 'Pizza margarita' },
                         { title: 'Callos a la riojana' },
                         { title: 'Rape al estilo cabañal' },
                         { title: 'Bacalao al pil-pil' },
                         { title: 'Pollo al chilindrón' },
                         { title: 'Pulpo a la gallega' },
                         { title: 'Tortilla de patata' },
                         { title: 'Fabada asturiana' }])

books = Book.create([{ title: 'Recetas de pollo' },
                     { title: 'Recetas de la abuela' },
                     { title: 'Recetas españolas' },
                     { title: "Arguiñano's Style" },
                     { title: 'Exquisiteces' },
                     { title: 'Dulces' },
                     { title: 'Todo Patatas' }])