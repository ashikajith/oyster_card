# Oyster Card
(_Work in progress_)

Clone the repo, open the irb

```ruby
> `require './lib/oyster_card'`
> trip = OysterCard.new.check_in({station_1})
> trip.end_trip(station_2)
```

```ruby
# Station List Array
[[1, "Old Street"], [1, "Angel"], [1, "Pimlico"], [1, "Tower Gateway"], [1, "Aldgate East"], [1, "Euston"],
[1, "Vauxhall"], [1, "Elephant & Castle"], [1, "Borough"], [1, "London Bridge"], [1, "Marylebone"], [1, "Edgware Road"],
[2, "All Saints"], [2, "Arsenal"], [2, "Barons Court"], [2, "Belsize Park"], [2, "Brockley"], [2, "Blackwall"],
[2, "Canada Water"], [2, "Devons Road"],
[3, "Acton Central"], [3, "Acton Town"], [3, "Barnes"], [3, "Beckton"], [3, "Blackheath"]

```