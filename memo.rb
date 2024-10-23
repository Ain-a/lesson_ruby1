require "csv" 

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
memo_type = gets.to_i 

if memo_type > 2
    puts "1か2を入力してください"
    memo_type = gets.to_i
end

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    filename = gets.chomp

    CSV.open("#{filename}.csv","w") do |csv|
    puts "メモしたい内容を記入してください"
    puts "完了したら Cntl+D をおします"
    memo = readlines(chomp:true)
    csv << memo
    end

elsif memo_type == 2
    puts "拡張子を除いたファイルを入力してください"
    filename = gets.chomp

    CSV.open("#{filename}.csv","a") do |csv|
    puts "追記したい内容を入力してください"
    puts "完了したら Cntl+D をおします"
    addition = readlines(chomp:true)
    csv << addition
    end

else 
    puts "1か2を入力してください"
    memo_type = gets.to_i

end




