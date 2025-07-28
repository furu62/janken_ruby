def janken
    puts "じゃんけん..."
    puts "0(ぐー)1(ちょき)2(ぱー)3(戦わない)"

    player_choice = gets.to_i

    computer_choice = rand(3)

    puts "ほい！"
    puts "----------"

    player_hand = case player_choice
        when 0 then "ぐー"
        when 1 then "ちょき"
        when 2 then "ぱー"
        when 3 then "戦わないを選択しました"
        else "0~3の数字を入力してください"
    end

    computer_hand = case computer_choice
        when 0 then "ぐー"
        when 1 then "ちょき"
        when 2 then "ぱー"
    end

    puts "あなた:#{player_hand}"
    puts "相手:#{computer_hand}"

    $win = "win"
    $lose = "lose"

    if player_choice == 3
        puts "ゲームを終了します"
        exit
    elsif player_choice > 3
        puts "0~3の数字を入力してください"
        return true

    elsif (player_choice == 0 && computer_choice == 1) ||
          (player_choice == 1 && computer_choice == 2) ||
          (player_choice == 2 && computer_choice == 0)
        
        $win == "win"
        p attimuite_hoi  

    elsif player_choice == computer_choice
        puts "あいこで..."
        return true

    elsif
        $lose == "lose"
        p attimuite_hoi    
        
    end
end


def attimuite_hoi
    puts "あっちむいて～"
    puts "0(上)1(下)2(左)3(右)"

    my_choice = gets.to_i

    your_choice = rand(4)

    my_hand = case my_choice
        when 0 then "上"
        when 1 then "下"
        when 2 then "左"
        when 3 then "右"
    end

    your_hand = case your_choice
        when 0 then "上"
        when 1 then "下"
        when 2 then "左"
        when 3 then "右"
    end

    puts "ほい！"
    puts "----------"
    puts "あなた:#{my_hand}"
    puts "相手:#{your_hand}"
    puts "----------"

    if (my_hand == your_hand) && ($win == "win")
        puts "あなたの勝ちです！"
    elsif (my_hand == your_hand) && ($lose == "lose")
        puts "あなたの負けです！"
    else
        janken
    end
end               

next_game = true

while next_game
    next_game = janken
end



