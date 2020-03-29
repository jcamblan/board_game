# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doorkeeper::Application.create_with(
  redirect_uri: 'http://localhost:3000',
  uid: 'teAWsmDHun3-krT4HtnaWCOzaTJHHLBdeDla0TKFexQ',
  secret: 'cJ6_lCgYF_GInAvi-HQl-7XRA1wTTBOvXX_hq96YCTY',
  scopes: 'board_game'
).find_or_create_by(name: :board_game)