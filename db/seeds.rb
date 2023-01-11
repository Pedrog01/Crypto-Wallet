# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Caadastrando as moedas..."

Coin.create!(
    description:"Bitcoin",
    acronym:"BTC",
    url_image: "https://static.vecteezy.com/system/resources/previews/008/505/801/original/bitcoin-logo-color-illustration-png.png"
)

Coin.create!(
    description:"Ethereum",
    acronym:"ETH",
    url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png"
)

Coin.create!(
    description:"Dash",
    acronym:"DASH",
    url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"
)

puts "Moedas cadastradas com sucesso!..."
