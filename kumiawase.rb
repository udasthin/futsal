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
teams = [A,B,C,D,E,F,G,H]
win = 0
# Aチームが勝利した数
a_teams_win_count = 0
# Bチームが勝利した数
b_teams_win_count = 0
# 重複しないチーム分け
a_teams = teams.combination(3).to_a
# 重複しないようリバースする

# 相手チームに同じ人間が行かないようロジックを組む
a_teams.each.with_index(1).uniq do |a_team,i|
  b_team = teams - a_team
  b_team_first = b_team.first(3)
  b_team_midle = b_team[1..3]
  b_team_last = b_team.last(3)
  puts "NO.#{i}#{a_team}------VS--------#{b_team_first}"
  puts "NO.#{i}#{a_team}------VS--------#{b_team_midle}"
  puts "NO.#{i}#{a_team}------VS--------#{b_team_last}"

end

