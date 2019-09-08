require "./bread"

puts "新規登録を行います"

print "ID:"
newId = gets.to_i
print "PASS:"
newPass = gets.to_i
4\
puts "ログインを行います"
puts "Id:#{newId}  Pass:#{newPass} 入力してください"

print "ID:"
id = gets.to_i
print "PASS:"
pass = gets.to_i

if id == newId && pass == newPass
    puts "ログイン成功"
else
    puts "ログイン失敗"
    exit
end

bread1 = Bread.new(name: "あんぱん", price: 200 )
bread2 = Bread.new(name: "しょくぱん", price: 120 )
bread3 = Bread.new(name: "かれーぱん", price: 150 )

menus = [bread1 , bread2 , bread3]

puts "商品を選んでください"
puts "1:#{bread1.name}　2:#{bread2.name}　3:#{bread3.name}"

loop do
    breadNum = gets.to_i
 if breadNum > 0 != breadNum >= 4
    
    breadNum = breadNum - 1
    selectBread = menus[breadNum]
    puts "個数を入力して下さい"
    num = gets.to_i
    puts "#{selectBread.name}を#{num}個で#{selectBread.acconunting(num)}円になります"
    puts "お買い上げありがとうございます！"

    exit
 else
    puts "1-3を入力してください"
 end
end

