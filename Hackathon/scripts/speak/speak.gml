// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function speak(speech){
	
	instance_create_depth(187, 678, -1000, oTypewriter);
	oTypewriter.textToWrite = speech;

}