module ApplicationHelper
	def set_team_line(players)
		line = ""
		i = 0
		case players.count
		when 2
			players.each do |player|
				line += "<td></td>"
				line += "<td>#{image_tag('shirt2.png')}<span>#{player.name}</span></td>"
			end
			line += "<td></td>"
		when 3
			if players.first.position == "3"
				players.each do |player|
					if (i == 1 || i == 2)
						line += "<td></td>"
					end
					line += "<td>#{image_tag('shirt2.png')}<span>#{player.name}</span></td>"
					i+=1
				end
			else
				players.each do |player|
					if i == 0
						line += "<td></td>"
					end
					line += "<td>#{image_tag('shirt2.png')} <span>#{player.name}</span></td>"
					i+=1
				end
				line += "<td></td>"
			end
		when 4
			players.each do |player|
				if i == 2
					line += "<td></td>"
				end
				line += "<td>#{image_tag('shirt2.png')}<span>#{player.name}</span></td>"
				i+=1
			end
		when 5
			players.each do |player|
				line += "<td>#{image_tag('shirt2.png')}<span>#{player.name}</span></td>"
			end
		end		
		line.html_safe
	end
end
