import aiohttp
import asyncio
import humanize


# bitstat.top
async def parse_data_bitstat(data):
    rate = data.split('"ticker_usd">')[1].split('$')[0].replace(' ', '')
    print('a ------', rate)
    return humanize.intcomma('%.2f' % float(rate))

async def requests_course_bitstat(session, url):
    async with session.get(url) as resp:
        print("Status:", resp.status)
        data = await resp.text()
        if resp.status != 200:
            return
        return await parse_data_bitstat(data)

async def client_bitstat(url_bitcoin, url_ethereum):
    async with aiohttp.ClientSession(connector=aiohttp.TCPConnector(limit=64, ssl=False)) as session:
        bitcoin, ethereum = await asyncio.gather(
            requests_course_bitstat(session, url_bitcoin),
            requests_course_bitstat(session, url_ethereum)
        )

        return {'bitcoin': bitcoin, 'ethereum': ethereum}


#  myfin.by
async def parse_data_myfin(data):
    rate = data.split('"birzha_info_head_rates">')[1].split('$')[0].strip()
    print('b ------', float(rate))
    return humanize.intcomma('%.2f' % float(rate))

async def requests_course_myfin(session, url):
    async with session.get(url) as resp:
        print("Status:", resp.status)
        data = await resp.text()
        if resp.status != 200:
            return
        return await parse_data_myfin(data)

async def client_myfin(url_bitcoin, url_ethereum):
    async with aiohttp.ClientSession(connector=aiohttp.TCPConnector(limit=64, ssl=False)) as session:
        bitcoin, ethereum = await asyncio.gather(
            requests_course_myfin(session, url_bitcoin),
            requests_course_myfin(session, url_ethereum)
        )

        return {'bitcoin': bitcoin, 'ethereum': ethereum}


# bitinfocharts.com
async def parse_data_bitinfo(data):
    rate = data.split('"price"')[1].split('>')[1].split('<')[0].strip().replace(',', '')
    print('c ------', rate)
    return humanize.intcomma('%.2f' % float(rate))

async def requests_course_bitinfo(session, url):
    async with session.get(url) as resp:
        print("Status:", resp.status)
        data = await resp.text()
        if resp.status != 200:
            return
        return await parse_data_bitinfo(data)

async def client_bitinfo(url_bitcoin, url_ethereum):
    async with aiohttp.ClientSession(connector=aiohttp.TCPConnector(limit=64, ssl=False)) as session:
        bitcoin, ethereum = await asyncio.gather(
            requests_course_bitinfo(session, url_bitcoin),
            requests_course_bitinfo(session, url_ethereum)  
        )

        return {'bitcoin': bitcoin, 'ethereum': ethereum}
