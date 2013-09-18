require "ostruct"
require "json"
require "currency_data/version"

module CurrencyData
  CURRENCIES = File.expand_path("../../data/currencies.json", __FILE__)

module_function

  def find iso_code
    data = table[iso_code.to_s.downcase.to_sym]
    data && OpenStruct.new(data)
  end

  def table
    @table ||= begin
      json = File.read(CURRENCIES)
      JSON.parse(json, symbolize_names: true)
    end
  end
end
