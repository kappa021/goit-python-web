import os
from handlers import client_myfin, client_bitinfo, client_bitstat

DIR_PATH = os.path.dirname(os.path.realpath(__file__))
TEMPLATE_PATH = os.path.join(DIR_PATH, "templates")
STATIC_PATH = os.path.join(DIR_PATH, "static")

DEBUG = os.environ.get("DEBUG_APP", True)

# Resources
URL_BITCOIN_MYFIN = 'https://myfin.by/crypto-rates/bitcoin'
URL_ETHEREUM_MYFIN = 'https://myfin.by/crypto-rates/ethereum'
URL_BITCOIN_BITINFOCHARTS = 'https://bitinfocharts.com/ru/bitcoin/'
URL_ETHEREUM_BITINFOCHARTS = 'https://bitinfocharts.com/ru/ethereum/'
URL_BITCOIN_BITSTAT = 'https://bitstat.top/coin.php?id_coin=1'
URL_ETHEREUM_BITSTAT = 'https://bitstat.top/coin.php?id_coin=2'


handlers = {
    'rates_bitstat': client_bitstat(URL_BITCOIN_BITSTAT, URL_ETHEREUM_BITSTAT),
    'rates_myfin': client_myfin(URL_BITCOIN_MYFIN, URL_ETHEREUM_MYFIN),
    'rates_bitinfo': client_bitinfo(URL_BITCOIN_BITINFOCHARTS, URL_ETHEREUM_BITINFOCHARTS)
     }