import scrapy
from weatherscraper.items import WeatherItem


class WeatherspiderSpider(scrapy.Spider):
    name = "weatherspider"
    allowed_domains = ["www.meteored.mx"]
    start_urls = ["https://www.meteored.mx/mas-ciudades-oaxaca-provincia-5641-p1.html"]

    def parse(self, response):
        # Obtiene todos los grupos de ciudades.
        groups = response.css("#mLoc ul")

        # Itera los grupos de esta sección.
        for i in range(1, len(groups) + 1):
            # Obtiene todas las ciudades de un grupo y recorre cada una.
            cities = response.xpath('//*[@id="mLoc"]/ul[' + str(i) + "]/li")
            for city in cities:
                city_url = city.css("a::attr(href)").get()
                yield response.follow(city_url, callback=self.parse_city)

        # Se mueve a la siguiente pagina.
        next_page = response.xpath('//*[@id="next_back"]/ul/li[@class="activa"]/following-sibling::li[1]/a/@href').get()
        if next_page is not None:
            yield response.follow(next_page, callback=self.parse)

    def parse_city(self, response):
        weather_item = WeatherItem()

        weather_item["city"] = response.css(".title-h1 ::text").get()
        weather_item["description"] = response.css(".descripcion ::text").get()
        weather_item["first_light"] = response.css(".salida_sol .aman-anoch strong ::text").get()
        weather_item["last_light"] = response.xpath('/html/body/main/div[2]/section[2]/div[1]/span[2]/span[3]/strong/text()').get()
        weather_item["noon"] = response.xpath('/html/body/main/div[2]/section[2]/div[1]/span[2]/span[2]/strong/text()').get()
        weather_item["sunout"] = response.xpath('/html/body/main/div[2]/section[2]/div[1]/span[1]/span[1]/strong/text()').get()
        weather_item["sunset"] = response.xpath('/html/body/main/div[2]/section[2]/div[1]/span[1]/span[2]/strong/text()').get()
        weather_item["temperature"] = response.css(".dato-temperatura ::text").get()
        weather_item["wind"] = response.css(".wind ::text").get()

        yield weather_item
