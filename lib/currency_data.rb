require "ostruct"
require "json"
require "currency_data/version"

module CurrencyData
  CURRENCIES = File.expand_path("../../data/currencies.json", __FILE__)

module_function

  def find iso_code
    data = table[iso_code.to_s.downcase.to_sym]
    data && OpenStruct.new(data).freeze
  end

  def table
    @table ||= begin
      json = File.read(CURRENCIES)
      hash = JSON.parse(json, symbolize_names: true)

      hash.each do |code, attributes|
        attributes[:prefered_symbol] ||= attributes[:symbol]
        attributes[:decimal_places] ||= 2
      end

      hash.freeze
    end
  end
end
