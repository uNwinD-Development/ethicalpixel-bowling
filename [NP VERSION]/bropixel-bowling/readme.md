# This is the NP BASE Vesion of BroPixel-Bowling

# [Preview](https://www.youtube.com/watch?v=DFcgbX3oZUY)


# Dependencies
[unwind-context](https://github.com/uNwinD-Development/unwind-context)

[bt-polyzone](https://github.com/brentN5/bt-polyzone)

 __Any Np Based target script__


# Instruction
* 1 . Add this to your shared list in the inventory

------------------------------------

		itemList["bowlingball"] = {
			fullyDegrades: false,
			decayrate: 0.0,
			displayname: "Bowling Ball",
			price: 10,
			weight: 0,
			nonStack: true,
			model: "",
			image: 'bowlingball.png',
			information: "The damn laptop",
			deg: false
		};

		itemList["bowlingreceipt"] = {
			fullyDegrades: false,
			decayrate: 0.0,
			displayname: "Bowling Recepit",
			price: 10,
			weight: 0,
			nonStack: true,
			model: "",
			image: 'bowlingreceipt.png',
			information: "The damn Recepit",
			deg: false
		};




* 2 . Add this to your functions.lua (client side) - inventory foler and add the icons
------------------------------------
		if (itemid == "bowlingball")  then
			TriggerServerEvent("bp-bowling:usebowlingball")
		end    
    
* 2 . Drag the icons from the folder "Icons" to your inventory icons folder!

* 3 . Make sure the script is started after dependenicies


# Known Bugs
No known bugs

# Support
Feel free to report any issues you have in our [Discord](discord.gg/a7XeGhpdpb)

```
</BroPixel > Development Team
```