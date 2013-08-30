# CurrencyData

Information about currencies.

This RubyGem comes with a JSON file containing information about all ISO currencies.

## Usage

```ruby
nzd = CurrencyData.find("NZD")
nzd.iso_code #=> "NZD"
nzd.name #=> "New Zealand Dollar"
nzd.symbol #=> "$"
nzd.alternate_symbols #=> ["NZ$"]
nzd.subunit #=> "Cent"
nzd.subunit_to_unit #=> 100
nzd.symbol_first #=> true
nzd.html_entity #=> "$"
nzd.decimal_mark #=> "."
nzd.thousands_separator #=> ","
nzd.iso_numeric #=> "554"
```

## Kudos

Thanks to the Money Gem contributors for maintaining this [JSON file](https://github.com/RubyMoney/money/blob/master/config/currency_iso.json).

