use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
 

radius = 20
color1 = "yellow"
long = 70 
high = 30
color2 = "black"
fill = "solid"
W = "white"
black-box = rectangle(long, high, fill, color2)

yellow-cir = circle(radius, fill, color1)

circle2 = beside(yellow-cir,yellow-cir)
above(circle2,black-box)

w-star = star(5, fill, W) 
ws2 = beside(w-star ,w-star)
ws4 = beside(ws2, ws2)
ws8 = beside(ws4, ws4)
ws10 = beside(ws8, ws2)
ws20 = above(ws10, ws10)
ws40 = above(ws20, ws20)
ws50 = above(ws40, ws10)

rr = rectangle(160, 10, fill, "red")
wr = rectangle(160, 10, fill, "white")
pair = above(rr, wr)
pair2 = above(pair,pair)
pair3 = above(pair2,pair2) 
pair5 = above(pair3, rr)
blob = rectangle( 70, 50,fill , "blue")
starblob = overlay(ws50,blob)
overlay(starblob, pair5)