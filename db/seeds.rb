# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Snippet.create [
  { title: 'html doctype', code: '<!doctype html>' },
  {title: 'html viewport meta', code: '<meta name="viewport" content="width=device-width, initial-scale=1.0">'},
  { title: 'install postgresql mac', code: %(
                        brew install postegresql
                        mkdir -p ~/db/postgres
                        initdb -D ~/db/postgres/data -EUTF-8 --locale=en_US.UTF-8
                        ) },
  { title: 'start postgresql', code: 'pg_ctl start -D ~/db/postgres/data -l ~/db/postgres/postgres.log' }
]