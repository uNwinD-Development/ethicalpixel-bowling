# This is the QBCore Vesion of EthicalPixelBowling

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



Next go to bt-target/script.js/line: 27 you should be seeing smth like this

		$("#target-"+index).data('TargetData', item.event);


Right under it add this line 

		$("#target-"+index).data('ParmsData', item.parms);


Next in the same file look for this

		$(document).on('mousedown', (event) => {
			let element = event.target;

			if (element.id.split("-")[0] === 'target') {
				let TargetData = $("#"+element.id).data('TargetData');

				$.post('http://bt-target/selectTarget', JSON.stringify({
					event: TargetData,
				}));

				$(".target-label").html("");
				$('.target-wrapper').hide();
			}
		});

Adn replace with this

		$(document).on('mousedown', (event) => {
			let element = event.target;

			if (element.id.split("-")[0] === 'target') {
				let TargetData = $("#"+element.id).data('TargetData');

				let ParmsData = $("#" + element.id).data('ParmsData');


				$.post('http://bt-target/selectTarget', JSON.stringify({
					event: TargetData,
					parms: ParmsData,

				}));

				$(".target-label").html("");
				$('.target-wrapper').hide();
			}
		});




* 4 . Make sure the script is started after dependenicies


# Known Bugs
No known bugs

# Support
Feel free to report any issues you have in our [Discord](discord.gg/W5MtEHy5ga)

```
</BroPixel > Development Team
```