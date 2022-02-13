if (eventAction == true) {
	eventTitle = ds_list_find_value(eventsList, evIndex);
	
	if (eventTitle == "greeting"){
		speak("Hey baby! Happy Valentine's day! Did you get me a gift :D? \n (press space to continue)")
		eventAction = false;
		oDrawText.evIndex = "";
	} else if (eventTitle == "gift") {
		if (gift != "") {
			if instance_exists(oTypewriter) {
				instance_destroy(oTypewriter);
			}
			happiness += 10;
			speak("Ah! you did get me a gift! I've always wanted a " + gift + "\nhow'd you know!? What a great way to end our date!")
			eventAction = false;
			oDrawText.evIndex = "";
			endGame(happiness)
		 
		} else {
			if instance_exists(oTypewriter) {
				instance_destroy(oTypewriter);
			}
			happiness -= 10;
			speak("Hey... wheres my gift? It's Valentine's Day! You're supposed to get me \nsomething!")
			eventAction = false;
			oDrawText.evIndex = "";
			endGame(happiness)
		}
	} else if (eventTitle == "end") and (!instance_exists(oTypewriter)) {
			endGame(happiness)
			
	}		
		else {
	
		resetMenu(eventTitle);
		eventAction = false;
		oDrawText.evIndex = "";
	}
}

if (happiness <= 25) {
	endGame(happiness)
}