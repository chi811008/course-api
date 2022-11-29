# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

c = Course.create(name: "資料庫設計", description: "資料庫設計,SQL 語法", lecturer_name: "雅青")
c.unit.create(name: "資料庫正規化", description: "NF1", content: "NF1, NF2, NF3", order: 1)
c.unit.create(name: "SQL query", description: "select, where", content: "select 欄位 from table where", order: 2)