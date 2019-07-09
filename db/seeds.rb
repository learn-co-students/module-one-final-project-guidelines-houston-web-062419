def finalPrice(price, qun)
    price*qun
end



i1 = Item.create("V neck T-shirt", 15)
i2 = Item.create("Crew neck shirt", 10)
i3 = Item.create("Wool sweater", 20)
i4 = Item.create("Denim jacket", 30)
i5 = Item.create("Raincoat", 20)
i6 = Item.create("Denim shorts", 17)
i7 = Item.create("Jeans", 25)
i8 = Item.create("Swim trunks", 15)
i9 = Item.create("Tank top", 10)
i10 = Item.create("Dad hat", 15)
i11 = Item.create("Bucket hat", 15)
i12 = Item.create("Bandana", 5)
i13 = Item.create("Vans slip on", 45)
i14 = Item.create("Vans Chukka low", 45)
i15 = Item.create("Socks", 10)
i16 = Item.create("Sunglasses", 25)
i17 = Item.create("Fanny Pack", 30)
i18 = Item.create("Ear Phones", 15)
i19 = Item.create("Watch", 25)
i20 = Item.create("Shoelaces", 5)
i21 = Item.create("Basketball shorts", 15)
i22 = Item.create("Laptop bag", 20)
i23 = Item.create("Hoodie", 30)
i24 = Item.create("Button down shirt", 25)
i25 = Item.create("Underwear", 15)


c1 = Customer.create(name: "Name1", email_address: "email@address.com")
c2 = Customer.create(name: "Name2", email_address: "email2@address.com")
c3 = Customer.create(name:"Name3", email_address: "email3@address.com")


p1 = Purchase.create(character_id: c1.id, item_id: i2.id, quantity: 1, total: finalPrice(i2.price, 1))

 