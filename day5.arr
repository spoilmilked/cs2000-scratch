use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun choose-hat(temp :: Number) -> String:
  doc:"returns a message with tempature approritate head gear" 
  spy:
    temp
  end
  if temp > 50:
    "no hat" 
  else if temp > 80:
    "cap"
  else:
    "winter hat"
  end
where: 
  choose-hat(70) is "no hat"
  choose-hat(49.9) is "winter hat"
  choose-hat(32) is "winter hat"
end

fun add-glasses(outfit :: String) -> String: 
  doc: "returns a message adding glasses to an outfit" 
  outfit + " add glasses"
end 

fun choose-outfit(temp :: Number) -> String: 
  doc: "choose a weather approriate outfit"
 if temp > 80:
    add-glasses("outfit")
  else if temp > 50:
    choose-hat(temp)
  else: 
    "no accessories"


    
  end 
end