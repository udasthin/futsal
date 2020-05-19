class Team
  attr_accessor :menber, :win_num, :lose_num,:teams_gu, :teams_pa

  def initialize(**params)
    @menber = params[:menber]
    @win_num = params[:win_num]
    @lose_num = params[:lose_num]
    @teams_gu = params[:teams_gu]
    @teams_pa = params[:teams_pa]
  end
end #classの終わり

class Human
  attr_accessor :name, :teams_gu, :teams_pa
  
  def initialize(*params)
    @name = params[:name]
    @teams_gu = params[:teams_gu]
    @teams_pa = params[:teams_pa]
  end
  
  A = "0:う"
  B = "1:さ"
  C = "2:お"
  D = "3:え"
  E = "4:よ"
  F = "5:わ"
  G = "6:け"
  H = "7:た"

  
  # グループ配列
  @name = [A,B,C,D,E,F,G,H]
  # 削除した文字列から引くための配列
  teamssub1 = [A,B,C,D,E,F,G,H]
  teamssub2 = [A,B,C,D,E,F,G,H]
  teamssub3 = [A,B,C,D,E,F,G,H]
    
  puts "これから６人で二つのチームに分けますが8人いるので今回参加しない2人を外します。番号を入力してください"
  
  # メンバーは8人いますが3対3の6人でやるので2人を外します。
  puts "0：う、1：さ、2：お、3：え、4：よ、5：わ、6：け、7：た"
  
  # dnum = 削除した文字列delete_numのこと
  dnum = teamssub1.delete_at(gets.chomp.to_i)
  
  # 番号を指定して外すメンバーを決める
  
  puts <<~EOS
  #{dnum}を外します。
  
  もう1人選んでください。
  "0：う、1：さ、2：お、3：え、4：よ、5：わ、6：け、7：た"
  EOS
  dnum2 = teamssub2.delete_at(gets.to_i)
  
  # delete num2のこと
  puts "#{dnum2}を外します。"
  puts " "
  # 外したメンバーを入れた配列
  dnums = [dnum,dnum2]
  # 配列teamsから外した二人を引く
  teams = teamssub3 - dnums
  puts "#{teams}でグーチーム、パーチームにランダムで分かれます。"
  
  teams.shuffle!
  teams_gu = teams.first(3)
  teams_pa = teams.last(3)
  @teams_gu = teams_gu.sort
  @teams_pa = teams_pa.sort
  
  puts <<~TEXT2
  #{@teams_gu}はグーチーム、
  
  #{@teams_pa}はパーチームです
  3人ずつに分かれました、チームメイトを確認し試合を開始してください。
  -------------------------------------------------------------
  
  
  試合が終了しました。
  グーチームが勝ったら0、パーチームが勝ったら1を入力:
  TEXT2
  
  @win_num_gu = 0
  @win_num_pa = 0
  @lose_num_gu = 0
  @lose_num_pa = 0
  result = gets.to_i
  if 0 == result
    puts <<~TEXT3
    #{@teams_gu}の勝ち
    #{@teams_pa}の負け

    TEXT3
    @win_num_gu += 1
    @lose_num_pa += 1
  else
    puts <<~TEXT4
    #{@teams_pa}の勝ち
    #{@teams_gu}の負け
    
    TEXT4
    @win_num_pa += 1
    @lose_num_gu += 1
  end
  
  puts <<~TEXT5
  #{@teams_gu}の合計勝ち数は#{@win_num_gu}、
  合計負け数は#{@lose_num_gu}、
  #{@teams_pa}の合計勝ち数は#{@win_num_pa}、
  合計負け数は#{@lose_num_pa}
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  試合終了！次の試合へ！
  
  TEXT5

end #クラスの終わり