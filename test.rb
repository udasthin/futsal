# メンバーの名前の頭文字
u = "1:う"
s = "2:さ"
o = "3:お"
k = "4:け"
t = "5:た"
y = "6:よ"
e = "7:え"
w = "8:わ"

# メンバーの配列
menbers = [u,s,o,y,e,w,k,t]

# 3人ずつ2チームに分ける(とりあえず例として1通りだけ)
a_team = menbers.first(3)
b_team = menbers.last(3)
# 3人に分けた時の配列
uso = [u,s,o]
usk = [u,s,k]
usy = [u,s,y]
uoy = [u,o,y]
usw = [u,s,w]
uoe = [u,o,e]
uow = [u,o,w]
yow = [y,e,w]
yew = [y,e,w]
tye = [t,y,e]
# チームの勝敗数
uso_win = 0
uso_lose = 0
yew_win = 0
yew_lose = 0
usk_win = 0
usk_lose = 0
twe_win = 0
twe_lose = 0
# 3人に分けた配列の配列
allmenbers = [uso,usk,usy,usw,uoy,uoe,uow,yew,tye]


# チーム毎の処理、113通り全部書くのは厳しい。。。。

allmenbers.each do |menber|
  if a_team.sort == uso && b_team.sort == yew
    puts "#{uso}vs#{yew}!!"
    while true
      print "#{uso}が勝ったら0、#{yew}が勝ったら1を入力:"
      result = gets.to_i
      if result >= 2
        puts "0か1を入力,やり直し"
        next
      end
      break 
    end
    if result == 0
      uso_win += 1
      yew_lose += 1
      puts <<~TEXT
      #{uso}チームの勝ちで#{uso_win}勝
      #{yew}のチーム負けで#{yew_lose}負
      TEXT
      break
    else
      puts "#{uso}の負け"
      uso_lose += 1
      yew_win += 1
      puts <<~TEXT
      #{yew}チームの勝ちで#{yew_win}勝
      #{uso}のチーム負けで#{uso_lose}負
      TEXT
      break
    end   
  end
  
  if a_team.sort == usk && b_team.sort == twe
    puts "#{usk}vs#{twe}!!"
    while true
      print "#{usk}が勝ったら0、#{twe}が勝ったら1を入力:"
      result = gets.to_i
      if result >= 2
        puts "0か1を入力,やり直し"
        next
      end
      break 
    end
    if result == 0
      usk_win += 1
      twe_lose += 1
      puts "#{usk}チームの勝ちで#{usk_win}勝"
      puts "#{twe}のチーム負けで#{twe_lose}負"
      break
    else
      puts "#{usk}の負け"
      usk_lose += 1
      twe_win += 1
      puts "#{twe}の勝ちで#{twe_win}勝"
      puts "#{usk}の負けで#{usk_lose}負"
      break
    end   
  end
end

puts <<~TEXT
 トータル、uso#{uso_win}勝、usk#{usk_win}勝、yew#{yew_win}勝、twe#{twe_win}勝
 トータル,uso#{uso_lose}負、usk#{usk_lose}負、yew#{yew_lose}負、twe#{twe_lose}負
TEXT

