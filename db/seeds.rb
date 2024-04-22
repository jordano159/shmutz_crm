# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

Ken.create([
  { name: "מרכז כרמל" },
  { name: "נווה שאנן" },
  { name: "נאות פרס" },
  { name: "קריית חיים" },
])

Campain.create([
  { name: "Summer Camp 2023", year: Date.new(2023), script: "Join us for an exciting summer adventure!", notes: "Early bird registration ends soon!", ken_id: 1 },
  { name: "Winter Retreat 2023", year: Date.new(2023), script: "Escape the cold and enjoy a cozy retreat!", notes: "Limited spots available.", ken_id: 2 },
  # Add more campaign records here...
])

Kid.create([
  { name: "Alice", phone: "123-456-7890", grade: "8th", status: 1, notes: "Allergic to peanuts" },
  { name: "Bob", phone: "987-654-3210", grade: "9th", status: 2, notes: "Prefers vegetarian meals" },
])
