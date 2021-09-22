puts 'Choise action(en/de)?:'
action = gets
puts 'File link:'
file_link = gets
puts action == "en"
#Encode
if action.to_i(base=16) == 14
	system("gpg -c #{file_link}")
	system("gpg-connect-agent reloadagent /bye")
#Decode
elsif action.to_i(base=16) == 222
	system("gpg --decrypt-files #{file_link}")
end