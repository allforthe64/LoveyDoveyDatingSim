// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function runEvent(menuIndex, eventIndex, title){
	
	
	runMeal(title)
	
	if (title == "idle") {		// menu process for idle menu
		
		if (eventIndex = "") {
			selection = oDrawText.index;
			
			if (selection == 0) {
				with (oDrawText) {
						input1 = "Compliment";
						input2 = "Talk about work";
						input3 = "Talk about the weather";
						input4 = "Plan vacation";
						evIndex = "smt";
					}
			} else if (selection == 1) {
					with (oDrawText) {
						input1 = "Surf Internet";
						input2 = "Purchase Gift";
						input3 = "";
						input4 = "";
						evIndex = "phone";
					}
			} else if (selection == 2) {
				var enjoy = irandom_range(1, 100)
				if (enjoy <= 15) {
					speak("Hahahaha, I love food fights! The last person with clean clothes wins!\n (press space to continue")
					oGame.happiness += 20;
					oDrawText.input1 = "Continue food fight";
					oDrawText.input2 = "Stop food fight";
					oDrawText.input3 = "";
					oDrawText.input4 = "";
					oDrawText.evIndex = "ff1";
				} else {
					speak("Oh my god, what are you doing?! What is wrong with you, you weirdo??\n (press space to continue)")
					oGame.happiness -= 20;
					oDrawText.input1 = "Continue food fight";
					oDrawText.input2 = "Stop food fight";
					oDrawText.input3 = "";
					oDrawText.input4 = "";	
					oDrawText.evIndex = "ff2";
				}
					
			} else if (selection == 3) {
				var flip = irandom_range(1, 100);
				if (flip <= 20) {
					speak("THAT WAS HILARIOUS")
					oGame.happiness += 10;
					oDrawText.input1 = "Leave restaurant";
					oDrawText.input2 = "Start food fight";
					oDrawText.input3 = "Brawl";
					oDrawText.input4 = "";
					oDrawText.evIndex = "sec2";
				} else {
					oGame.happiness -= 50;
					oDrawText.input1 = "Say you flipped it on purpose";
					oDrawText.input2 = "Lie and say it was an accident";
					oDrawText.input3 = "";
					oDrawText.input4 = "";
					oDrawText.evIndex = "flip";
				}
	
			}
		} else if (eventIndex == "phone") {
			
			selection = oDrawText.index;
			if (selection == 0) {
				var prob = 10;
				
				if (prob == 1) {
					with (oDrawText) {
						evIndex = "phone1"
						input1 = "Put away phone";
						input2 = "Stay on phone";
					}
				}
				else {
					speak("*Sports noises* He's at the 20, the 10!!! TOUCHDOWWWWWWN MIAMI! \n (press space to continue)")
					with (oGame) {
						eventAction = true;
						evIndex ++;
					}
				}
			} else if (selection == 1) {
				with (oDrawText) {
					evIndex = "phone2";
					input1 = "Puppy";
					input2 = "Flowers";
					input3 = "Necklace";
					input4 = "No gift";
				}
			}
		} else if (eventIndex == "phone1") {
			
			selection = oDrawText.index;
			
			if (selection == 1) {
				with (oGame) {
					eventAction = true;
					evIndex ++;
				}
			}
		} else if (eventIndex == "phone2") {
			
			selection = oDrawText.index;
			
			if (selection == 0) {
				speak("*Purchased puppy*")
				with (oDrawText) {
					oGame.gift = "Puppy";
				}
				
				with (oGame) {
					eventAction = true;
					evIndex ++;
				}
			} else if (selection == 1) {
				speak("*Purchased flowers*")
				with (oDrawText) {
					oGame.gift = "Flowers";
				}
				
				with (oGame) {
					eventAction = true;
					evIndex ++;
				}
			} else if (selection == 2) {
				speak("*Purchased Necklace*")
				with (oDrawText) {
					oGame.gift = "Necklace";
				}
				
				with (oGame) {
					eventAction = true;
					evIndex ++;
				}
			} else if (selection == 3) {
				
				speak("*No gift purchased*")
				
				with (oGame) {
					eventAction = true;
					evIndex ++;
				}
			}
		} else if (eventIndex == "smt") {
			selection = oDrawText.index;
			
			if (selection == 0) {
				if (oGame.compliments < 3) {
					speak("Awwww, darling thank you! You're such a sweetie!\n(press space to continue)")
					oGame.compliments ++;
					oGame.happiness += 10;
					oGame.eventAction = true;
					oGame.evIndex ++;
				} else {
					speak("Babe, that's the third compliment IN A ROW. Stop being such a suck up!\n (press space to continue")
					oGame.happiness -= 10;
					oGame.eventAction = true;
					oGame.evIndex ++;
				}
			} else if (selection == 1) {
				speak("Ugh, I had such a rough day at work today. My boss was running around the office yelling\n at people the entire time, and then I spilled coffee on my favorite sweater! \nBut it's great to be eating here at this nice restaurant.\n (press space to continue") 
				oDrawText.input1 = "Comfort";
				oDrawText.input2 = "Tease";
				oDrawText.input3 = "";
				oDrawText.input4 = "";
				oDrawText.evIndex = "smtwork"
			} else if (selection == 2) {
				speak("It's been really cold recently, hasn't it? Maybe we should go out \n and build a snowman tomorrow...\n (press space to continue")
				oGame.eventAction = true;
				oGame.evIndex ++;
			} else if (selection == 3) {
				speak("Ooh, baby we should take a vacation. Can we? Please? \n Ooh, where should we go to?\n (press space to continue")
				oDrawText.input1 = "France";
				oDrawText.input2 = "Italy";
				oDrawText.input3 = "I don't want to go on a vacation lol.";
				oDrawText.input4 = "";
				oDrawText.evIndex = "vac";
			}
			
		} else if (eventIndex == "smtwork") {
			selection = oDrawText.index;
			
			if (selection == 0) {
				speak("Thank you honey. Don't worry, I only burst one blood vessel today. \nAnd you know what? This date right now is making everything a whole lot better!\n (press space to continue")
				oGame.happiness += 10;
				oGame.eventAction = true;
				oGame.evIndex ++;
			} else if (selection == 1) {
				speak("*Gasp* How could you say that! You know that I hate my boss! How dare\n you question why she was yelling at me today?! It's almost as if you \ntwo teamed up to be mean to me today!\n (press space to continue)")
				oGame.happiness -= 10;
				oGame.eventAction = true;
				oGame.evIndex ++;
			}
		} else if (eventIndex == "vac") {
			selection = oDrawText.index;
			
			if (selection == 0) {
				speak("Yaaaaa, France! Time to drown in fine wine and baguettes!\nOui Oui! (press space to continue)")
				oGame.happiness += 5;
				oGame.eventAction = true;
				oGame.evIndex ++;
			} else if (selection == 1) {
				speak("Hurray! I've always wanted to go to Italy! I want to look at clothes and cars\n I desperately desire but can never afford!... wait, now I'm sad.\n (press space to continue)")
				oGame.happiness += 10;
				oGame.eventAction = true;
				oGame.evIndex ++;
			} else if (selection == 2) {
				speak("You suck! (press space to continue)")
				oGame.happiness -= 15;
				oGame.eventAction = true;
				oGame.evIndex ++;
			}
		} else if (eventIndex == "ff1") {
			selection = oDrawText.index;
			
			if (selection == 0) {
				speak("YAAAAAAAAA. TAKE THIS!!! (press space to continue)")
				oGame.happiness += 10;
				oDrawText.evIndex = "sec";
				oDrawText.input1 = "Resist";
				oDrawText.input2 = "Leave quietly";
			} else if (selection == 1) {
				speak("Aww man, I was just starting to have fun... (press space to continue)")
				oGame.eventAction = true;
				oGame.evIndex ++;
			}
		} else if (eventIndex == "ff2") {
			selection = oDrawText.index;
			
			if (selection == 0) {
				speak("AHHHH. OH MY GOD. SOMEBODY STOP HIM \n (press space to continue)")
				oGame.happiness -= 10;
				oDrawText.evIndex = "sec";
				oDrawText.input1 = "Resist";
				oDrawText.input2 = "Leave quietly";
			} else if (selection == 1) {
				speak("Jeez, I can't believe you just yeeted my food like that. Seriously\n what's wrong with you (press space to contiue)")
				oGame.eventAction = true;
				oGame.evIndex ++;
			}
		} else if (eventIndex = "sec") {
			selection = oDrawText.index;
			if (selection == 0) {
				speak("*Bonk*... You wake up in a cell in the country jail")
				endGame(oGame.happiness);
			} else {
				speak("You leave quietly")
				endGame(oGame.happiness);
			}
		} else if (eventIndex = "flip") {
			selection = oDrawText.index;
			if (selection == 0) {
		
				
				var dump = irandom_range(1, 3);
				
				if (dump != 2) {
					speak("Aight I'm out. Peace.")
					oGame.happiness = 0;
					endGame(oGame.happiness);
				} else {
					speak("Bro you trippin don't act like a goof ok? (press space to continue)")
					oGame.eventAction = true;
					oGame.evIndex ++;
				}
			} else if (selection == 1) {
				var dump = irandom_range(1, 3);
				
				if (dump != 2) {
					speak("Nah man you lyin. I'm outta here, peace.")
					oGame.happiness = 0;
					endGame(oGame.happiness)
				} else {
					speak("Baby, please try not to be too clumsy, ok? (press space to continue)")
					oGame.eventAction = true;
					oGame.evIndex ++;
				}
				
			} else if (eventIndex == "sec2") {
				selection = oDrawText.index;
				
				if (selection == 0) {
					speak("You leave quietly")
					endGame(oGame.happiness);
				} else if (selection == 1) {
					speak("You fling food at the officer... and suddenly you wake up in a cell in the/n county jail")
					oGame.happiness += 10;
					endGame(oGame.happiness);
				} else if (selection == 3) {
					var win = irandom_range(0, 100);
					
					if (win <= 75) {
						speak("You beat up the security and leave the restaurant as champions")
						oGame.happiness += 10;
						endGame(oGame.happiness);
					} else {
						speak("You both wake up in a cell at the county jail")
						endGame(oGame.happiness)
					}
				}
			}
		}
	}

}



// reset menu function
function resetMenu(title) {
	if (title == "appetizer") {
		with (oDrawText) {
			input1 = "Avocado Shrimp Tart";
			input2 = "Flatbread Pizza";
			input3 = "Lamb Skewers";
			input4 = "No Appetizer";
		}	
	} else if (title == "drinks") {
		with (oDrawText) {
			input1 = "Martini";
			input2 = "Bottle of wine";
			input3 = "Margarita";
			input4 = "No Drinks";
		}	
	} else if (title == "dinner") {
		with (oDrawText) {
			input1 = "Salmon Salad";
			input2 = "Spaghetti";
			input3 = "New York Strip";
			input4 = "Squash Soup and Salad";
		}
	}
	else if (title == "dessert") {
		with (oDrawText) {
			input1 = "Mousse Cup";
			input2 = "Chocolate Caramel Cake";
			input3 = "Creme Brulee Ice Cream";
			input4 = "No Desert";
		}
	}
	else if (title == "idle") {
		with (oDrawText) {
			input1 = "Small Talk";
			input2 = "Use Phone";
			input3 = "Start Food Fight";
			input4 = "Flip Table";
		}
	}
}

function endGame(happiness) {
	if (happiness >= 75) {
		instance_destroy(oDrawText);
		instance_create_depth(room_width/2, room_height/2, -1000, oWin);
	} else {
		instance_destroy(oDrawText);
		instance_create_depth(room_width/2, room_height/2, -1000, oLose);
	}
}