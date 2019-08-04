require 'ruby_bitbankcc'

bbcc = Bitbankcc.new

btc_result = JSON.parse(bbcc.read_ticker('btc_jpy').body)
xrp_result = JSON.parse(bbcc.read_ticker('xrp_jpy').body)

btc_last = btc_result["data"]["last"].to_i
xrp_last = xrp_result["data"]["last"].to_f

puts "BTC: #{btc_last} JPY/BTC"
puts "XRP: #{xrp_last} JPY/XRP"

owned_assets_btc = 0.08980158
owned_assets_xrp = 1146.0522
owned_assets_jpy = 58.8327

sum = owned_assets_btc * btc_last + owned_assets_xrp * xrp_last + owned_assets_jpy

puts "ASSETS: #{sum.round}JPY"
