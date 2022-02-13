// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function runMeal(title){
	
	if (title == "appetizer") {		//menu process for appetizers
		
		
			selection = oDrawText.index
			
			if (selection == 0) {
				with (oDrawText) {
					input1 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 3;
					}
				}
			} else if (selection == 1) {
				with (oDrawText) {
					input2 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 7;
					}
				}
			} else if (selection == 2) {
				with (oDrawText) {
					input3 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 5;
					}
				}
			} else if (selection == 3) {
				with (oDrawText) {
					input4 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness -= 10;
					}
				}
		}
	} else if (title == "drinks") {		// menu process for drinks
		
		
			selection = oDrawText.index
			
			if (selection == 0) {
				with (oDrawText) {
					input1 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 5;
					}
				}
			} else if (selection == 1) {
				with (oDrawText) {
					input2 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 5;
					}
				}
			} else if (selection == 2) {
				with (oDrawText) {
					input3 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 5;
					}
				}
			} else if (selection == 3) {
				with (oDrawText) {
					input4 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness -= 15;
					}
				}
		}
	} else if (title == "dinner") {		// menu process for dinner
		
		
			selection = oDrawText.index
			
			if (selection == 0) {
				with (oDrawText) {
					input1 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 10;
					}
				}
			} else if (selection == 1) {
				with (oDrawText) {
					input2 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 8;
					}
				}
			} else if (selection == 2) {
				with (oDrawText) {
					input3 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 10;
					}
				}
			} else if (selection == 3) {
				with (oDrawText) {
					input4 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 1;
					}
				}
		}
	} else if (title == "dessert") {		// menu process for desserts
		
		
			selection = oDrawText.index
			
			if (selection == 0) {
				with (oDrawText) {
					input1 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 15;
					}
				}
			} else if (selection == 1) {
				with (oDrawText) {
					input2 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 10;
					}
				}
			} else if (selection == 2) {
				with (oDrawText) {
					input3 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness += 7;
					}
				}
			} else if (selection == 3) {
				with (oDrawText) {
					input4 = "success";
					with (oGame) {
						eventAction = true;
						evIndex ++;
						happiness -= 20;
					}
				}
		}
	}

}