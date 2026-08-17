class Product():
    _secret_code = "AKJJKJ"
    def __init__(self, name, publish_year, price):
        self.name = name
        self.publish_year = publish_year
        self.price = price

    def discount(self):
        discount_amount = (self.price * 10) / 100
        discount_price = self.price - discount_amount
        return f"{discount_price}$"

    
        