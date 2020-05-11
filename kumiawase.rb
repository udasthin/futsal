# 名前
A = "A"
B = "B"
C = "C"
D = "D"
E = "E"
F = "F"
G = "G"
H = "H"
# グループ配列
teams = [A,B,C,D,E,F]
win = 0
# Aチームが勝利した数
ateams_win_count = 0
# Bチームが勝利した数
bteams_win_count = 0
# 重複しないチーム分け
ateams = teams.combination(3).to_a
# 重複しないようリバースする
bteams = teams.combination(3).to_a.reverse

# 相手チームに同じ人間が行かないようロジックを組む
ateams.each.with_index(1).uniq do |ateam,i|
  bteams.each.uniq do |bteam|
    puts "NO.#{i}#{ateam}------VS--------#{bteam}"
    print "#{ateam}が勝ったら0、#{bteam}が勝ったら1を入力:"
      game = gets.to_i
    if game == 0
      puts "#{ateam}の勝ち"
      ateams_win_count += 1
      puts "#{ateam}のトータル#{ateams_win_count}勝です"
    elsif game == 1 
      puts "#{bteam}が#{bteams_win_count}勝"
      bteams_win_count += 1
      puts "#{bteam}のトータル#{bteams_win_count}勝です"
    end
  end
end