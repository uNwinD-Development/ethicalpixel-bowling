# This is the QBCore Vesion of BroPixel-Bowling

# [Preview](https://www.youtube.com/watch?v=DFcgbX3oZUY)


# Dependencies
[qb-menu](https://github.com/qbcore-framework/qb-menu)

[bt-polyzone](https://github.com/brentN5/bt-polyzone)

[bt-target](https://github.com/brentN5/bt-target)


# Instruction

* 1 .Add these two lines to your core\shared.lua:

		["bowlingball"] = {
			["name"] = "bowlingball", 			 	
			["label"] = "Bowling Ball", 	    
			["weight"] = 150, 		
			["type"] = "item", 		
			["expire"] = 999,		
			["image"] = "bowlingball.png", 	    	
			["unique"] = false,   	
			["useable"] = true, 	
			["shouldClose"] = true,    
			["combinable"] = nil,   
			["description"] = "Magic"
		},
		["bowlingreceipt"] = {
			["name"] = "bowlingreceipt", 			 	
			["label"] = "Bowling Recepit", 	    
			["weight"] = 150, 		
			["type"] = "item", 		
			["expire"] = 999,		
			["image"] = "bowlingreceipt.png", 	    	
			["unique"] = false,   	
			["useable"] = true, 	
			["shouldClose"] = true,    
			["combinable"] = nil,   
			["description"] = "Magic"
		},

    
* 2 . Drag the icons from the folder "Icons" to your inventory icons folder!

* 3 . This is a really iportnat step : bt-target/client.lua/line: 137

You will find this 

    	TriggerEvent(data.event)



Replace it with this


		if data.parms then
			TriggerEvent(data.event, data.parms)
		else
			TriggerEvent(data.event)
		end




* 4 . Make sure the script is started after dependenicies


# Known Bugs
No known bugs

# Support
Feel free to report any issues you have in our [Discord](discord.gg/a7XeGhpdpb)

```
</BroPixel > Development Team
```