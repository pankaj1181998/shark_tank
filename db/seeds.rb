# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', '../shark_tank_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
 csv.each do |row|
  t = AllShark.new
  t.Season = row['Season']
  t.no_in_series = row['No. in series']
  t.company = row['Company']
  t.Deal = row['Deal']
  t.Industry = row['Industry']
  t.Entrepreneur_gender = row['Entrepreneur Gender']
  t.amount = row['Amount']
  t.equity = row['Equity']
  t.valuation = row['Valuation']
  t.corcoran = row['Corcoran']
  t.cuban = row['Cuban']
  t.greiner = row['Greiner']
  t.herjavec = row['Herjavec']
  t.john = row['John']
  t.oleary = row["O'Leary"]
  t.harrington = row['Harrington']
  t.guest = row['Guest']
  t.t_sharks = row['# Sharks']
  t.save
  
 end

# 	puts "There are now #{Transaction.count} rows in the transactions table"
# rails g scaffold all_sharks Season:integer no_in_series:integer company:string Deal:string Industry:string Entrepreneur_gender:string  amount:string equity:string valuation:string corcoran:integer cuban:integer greiner:integer herjavec:integer john:integer oleary:integer harrington:integer guest:integer t_sharks:integer
