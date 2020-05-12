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
win = 0
abc_count = 0
abd_count = 0
teams_count = 0

