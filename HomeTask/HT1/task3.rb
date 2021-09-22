puts "Games start"
price = 200000
file = File.new("questions.txt","r:UTF-8")
question = file.readlines
file.close
(0..question.length-1).step(2) do |i|
	puts(question[i])
	print("Choise A,B,C or D: ")
	answer = gets
	if question[i+1] == answer
		price *= 2 
		puts("Nice job. You win #{price}")
	else
		puts("You lost. Correct answer #{question[i+1]}")
		price = 0
		break
	end
end
puts ""
puts "Game end.Your cash: #{price}"
