# 名前(対戦相手がわかりやすいようA~Hで表記)
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
# 重複しないチーム分け
a_teams = teams.combination(3).to_a
a_teams.each.with_index(1) do |a_team,i|
  puts "NO.#{i}#{a_team}"
end
# 相手チームに同じ人間が行かないようロジックを組む
# teams_count = 0
# teams_count += 1
# a_teams.each do |a_team|
#   b_team = teams - a_team
#   b_team_first = b_team.first(3)
#   b_team_midle = b_team[1..3]
#   b_team_last = b_team.last(3)
#   puts "NO.#{teams_count}#{a_team}------VS------#{b_team_first}"
#   teams_count += 1
#   puts "NO.#{teams_count}#{a_team}------VS------#{b_team_midle}"
#   teams_count += 1
#   puts "NO.#{teams_count}#{a_team}------VS------#{b_team_last}"
#   teams_count += 1
# end