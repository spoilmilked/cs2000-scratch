use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
#part 1
fun is-free-drink(stamps :: Number) -> Boolean:
  doc: " returns true if at 9, else returns false"
  if stamps > 8: 
    true 
  else:
    false 
  end
  where: 
    is-free-drink(8) is false
    is-free-drink(9) is true
    is-free-drink(5) is false
  end 

#part 2
fun stamps-after(stamp-count :: Number , bought-drink :: Boolean) -> Number:
  doc: " if false returns stamp-count, if true and drink is free returns 0, if true and not free adds 1"
  if (bought-drink == true) and (is-free-drink(stamp-count) == true):
    0
  else if (bought-drink == true) and (is-free-drink(stamp-count) == false): 
    stamp-count + 1
    else:
    stamp-count 
  end
where: 
  stamps-after(8 , false) is 8
  stamps-after(9, true) is 0
  stamps-after(6, true) is 7
end 

#part 3
fun drink-price(stamp-count :: Number) -> Number:
  doc: "returns price of purchase"
  if is-free-drink(stamp-count) == true:
    0
  else if is-free-drink(stamp-count) == false:
    4
  end
where: 
  drink-price(4) is 4
  drink-price(9) is 0
  drink-price(3) is 4
end

#part 4
fun card-text(stamp-count :: Number, bought-drink :: Boolean) -> String: 
  doc: "returns stamps and how much paid" 
  if bought-drink == true:
  "Stamps:" + num-to-string(stamps-after(stamp-count, bought-drink)) + "/10" + "\n" + "Paid:" + num-to-string(drink-price(stamp-count)) 
  else:
    "Stamps:" + num-to-string(stamps-after(stamp-count, bought-drink)) + "/10" + "\n" + "Paid:" + "0"
  end
where: 
  card-text(5,true) is "Stamps:6/10\nPaid:4"
  card-text(9,true) is "Stamps:0/10\nPaid:0"
  card-text(4,false) is "Stamps:4/10\nPaid:0"
end 

fun card-image(stamp-count :: Number) -> Image: 
  doc: " returns stamp count ontop of image"
  if is-free-drink(stamp-count) == true:
    overlay(text(num-to-string(stamp-count), 24, "black"), rectangle(50,50, "solid", "pink"))
  else: 
    overlay(text(num-to-string(stamp-count), 24, "black"), rectangle(50,50, "solid", "white"))
  end
end