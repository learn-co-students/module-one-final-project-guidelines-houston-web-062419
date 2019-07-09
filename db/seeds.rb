def finalPrice(price, quantity)
    price * quantity
end


i1 = Item.create(name: "V neck T-shirt", price: 15)
i2 = Item.create(name: "Crew neck shirt", price: 10)
i3 = Item.create(name: "Wool sweater", price: 20)
i4 = Item.create(name: "Denim jacket", price: 30)
i5 = Item.create(name: "Raincoat", price: 20)
i6 = Item.create(name: "Denim shorts", price: 17)
i7 = Item.create(name: "Jeans", price: 25)
i8 = Item.create(name: "Swim trunks", price: 15)
i9 = Item.create(name: "Tank top", price: 10)
i10 = Item.create(name: "Dad hat", price: 15)
i11 = Item.create(name: "Bucket hat", price: 15)
i12 = Item.create(name: "Bandana", price: 5)
i13 = Item.create(name: "Vans slip on", price: 45)
i14 = Item.create(name: "Vans Chukka low", price: 45)
i15 = Item.create(name: "Socks", price: 10)
i16 = Item.create(name: "Sunglasses", price: 25)
i17 = Item.create(name: "Fanny Pack", price: 30)
i18 = Item.create(name: "Ear Phones", price: 15)
i19 = Item.create(name: "Watch", price: 25)
i20 = Item.create(name: "Shoelaces", price: 5)
i21 = Item.create(name: "Basketball shorts", price: 15)
i22 = Item.create(name: "Laptop bag", price: 20)
i23 = Item.create(name: "Hoodie", price: 30)
i24 = Item.create(name: "Button down shirt", price: 25)
i25 = Item.create(name: "Underwear", price: 15)


c1 = Customer.create(name: "Name1", email_address: "email@address.com")
c2 = Customer.create(name: "Name2", email_address: "email2@address.com")
c3 = Customer.create(name:"Name3", email_address: "email3@address.com")


p1 = Purchase.create(character_id: c1.id, item_id: i2.id, quantity: 1, total: finalPrice(i2.price, 1))
p2 = Purchase.create(character_id: c2.id, item_id: i5.id, quantity: 3, total: finalPrice(i2.price, 3))


 