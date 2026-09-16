use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun welcome(name :: String) -> String:
  doc: "returns a message greeting with name"
  "Welcome to class, " + name
  end


fun three-layer-cake(top, middle, bottom) -> Image:
  doc: "return a three layer cake with specified colors"
  above(rectangle(120, 30, "solid", top),
    above(rectangle(120, 30, "solid", middle),
      rectangle(120, 30, "solid", bottom))
    )
end

fun double-cake(c1, c2:: String) -> Image:
  doc:"Creates a twoo layer cake" 
  upper = rectangle(60,30, "solid", c1)
  lower = rectangle(80, 30, "solid", c2)
  final-cake = above(upper, lower)
  final-cake
end

fun tshirt-cost(number:: Number, letter:: Number) -> Number:
  doc: "Calculates the cost of tshirt"
  numbers = 5 * number
  letters = 0.1 * letter
  total-cost = number + letters
  total-cost
  
end
  
  