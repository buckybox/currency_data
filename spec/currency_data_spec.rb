# encoding: UTF-8

require "currency_data"

describe CurrencyData do

  describe ".find" do
    specify { expect(CurrencyData.find(nil)).to be_nil }
    specify { expect(CurrencyData.find("XXX")).to be_nil }

    context "with NZD" do
      before do
        @nzd = CurrencyData.find("NZD")
      end

      specify { expect(@nzd.symbol).to eq("$") }
      specify { expect(@nzd.decimal_mark).to eq(".") }
      specify { expect(@nzd.thousands_separator).to eq(",") }
      specify { expect(@nzd.symbol_first).to be_true }
    end

    context "with EUR" do
      before do
        @eur = CurrencyData.find("EUR")
      end

      specify { expect(@eur.symbol).to eq("€") }
      specify { expect(@eur.decimal_mark).to eq(",") }
      specify { expect(@eur.thousands_separator).to eq(".") }
      specify { expect(@eur.symbol_first).to be_true }
    end
  end
end
