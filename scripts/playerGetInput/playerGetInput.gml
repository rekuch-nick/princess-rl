function playerGetInput(){
	
	xMouse = floor(mouse_x / 64);
	yMouse = floor(mouse_y / 64);
	
	yMouseOff = floor( (mouse_y + 32) / 64);
	
	xIn = 0;
	if(keyboard_check(ord("A")) || keyboard_check(vk_left)){ xIn --; }
	if(keyboard_check(ord("D")) || keyboard_check(vk_right)){ xIn ++; }
	
	yIn = 0;
	if(keyboard_check(ord("W")) || keyboard_check(vk_up)){ yIn --; }
	if(keyboard_check(ord("S")) || keyboard_check(vk_down)){ yIn ++; }
	
	clickOK = keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
	holdOK = keyboard_check(vk_enter) || mouse_check_button(mb_left);
	
	clickNO = keyboard_check_pressed(vk_backspace) || mouse_check_button_pressed(mb_right);
	holdNO = keyboard_check(vk_backspace) || mouse_check_button(mb_right);
	
	clickPass = keyboard_check_pressed(vk_space);
	
	clickPause = keyboard_check_pressed(vk_escape);
	
	if(inputCD > 0){
		clickOK = false; holdOK = false;
		clickNO = false; holdNO = false;
	}
	
	clickNum = 0;
	if(keyboard_check_pressed(ord("1"))){ clickNum = 1; }
	if(keyboard_check_pressed(ord("2"))){ clickNum = 2; }
	if(keyboard_check_pressed(ord("3"))){ clickNum = 3; }
	
}