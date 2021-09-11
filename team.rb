class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    puts self.win.to_f / (self.win + self.lose)
    
  end
  
  def show_team_result
      puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は0.{calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
team1 = Team.new("Giants", 67, 45, 8)


# インスタンスの使用
team1.show_team_result

