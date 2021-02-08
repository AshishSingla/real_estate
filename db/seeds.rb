# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# create customer
User.create email: 'ashish@gmail.com', password: 123456, role: 0

# create Admin
User.create email: 'ashish_admin@gmail.com', password: 123456, role: 1

