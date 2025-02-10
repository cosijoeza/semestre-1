# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class WeatherscraperItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass


class WeatherItem(scrapy.Item):
    city = scrapy.Field()
    description = scrapy.Field()
    first_light = scrapy.Field()
    last_light = scrapy.Field()
    #url = scrapy.Field()
    noon = scrapy.Field()
    sunout = scrapy.Field()
    sunset = scrapy.Field()
    temperature = scrapy.Field()
    wind = scrapy.Field()
