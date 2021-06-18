////----Constants----////
//Game
int maxScore = 3;

//Windows
int WX = 800;
int WY = 600;

//Ball
int ball_size = WX / 80;

//Players
int p_height = WY / 6;
int p_width = WX / 80;
int p_speed = WY / 120; 

//Player Left
int pL_X = WX / 16;

//Player Right
int pR_X = WX - (WX / 16);

////----Variables----////
//Ball
int ball_speedX;
int ball_speedY;
int ballX;
int ballY;

//Player Left
int pL_Y;
int pL_score;

//Player Right
int pR_Y;
int pR_score;

////----Immersion Commands----////
bool pL_U, pL_D;
bool pR_U, pR_D;
bool start;

////----GameLoop----////
while(true){
	//Resseting Variables for new Game
	//Ball
	ball_speedX = WX / 160; 
	ball_speedY = WY / 120; 
	ballX = WX / 2;
	ballY = WY / 2;

	//Player Left 
	pL_Y = (WY / 2) - p_height/2;
	pL_score = 0;

	//Player Right
	pR_Y = (WY / 2) - p_height/2;
	pR_score = 0;

	if(start){
		while(pL_score < maxScore or pR_score < maxScore or reset){
			////----Paddle Drive Unit----////
			//Player Left Up
			if((pL_Y - p_speed) >= 0 and pL_U){
				pL_Y = pL_Y - p_speed;
			}else if((pL_Y + p_speed + p_heigh) <= WY  and pL_D){
 				//Player Left Dow
				pL_Y = pL_Y + p_speed;
			}

			//Player Right Up
			if((pR_Y - p_speed) >= 0 and pR_U){
				pR_Y = pR_Y - p_speed;
			}else if((pR_Y + p_speed + p_height) <= WY  and pR_D){
				//Player Right Dow
				pR_Y = pR_Y + p_speed;
			}
			
			////----Ball Drive Unit----////
			//Vertical Movement
			if((ballY + ball_speedY) >= ball_size and (ballY + ball_speedY) <= (WY - ball_size)){
				ballY = ballY + ball_speedY;
			}else{
				//Collision with horizontal edges
				ball_speedY = - ball_speedY;
			}

			//Collision with Paddings
			if(((ballX >= pL_X and ballX <= (pL_X + p_width) ) and (ballY >= pL_Y and ballY <= (pL_Y + p_height / 4))) or
				       ((ballX >= pR_X and ballX <= (pR_X + p_width) ) and (ballY >= pR_Y and ballY <= (pR_Y + p_height / 4)))){
				
				ball_speedX = -(ball_speedX - WX/800);
				ball_speedY = -(ball_speedY + WY/200);

			}else if(((ballX >= pL_X and ballX <= (pL_X + p_width) ) and (ballY >= (pL_Y + p_height / 4) and ballY <= (pL_Y + p_height / 2))) or
				       ((ballX >= pR_X and ballX <= (pR_X + p_width) ) and (ballY >= (pL_Y + p_height / 4) and ballY <= (pR_Y + p_height / 2)))){

				ball_speedX = -(ball_speedX + WX/400);
				ball_speedY = -(ball_speedY - WY/300);

			}else if(((ballX >= pL_X and ballX <= (pL_X + p_width) ) and (ballY >= (pL_Y + p_height / 2) and ballY <= (pL_Y + 3*(p_height / 4)))) or
				       ((ballX >= pR_X and ballX <= (pR_X + p_width) ) and (ballY >= (pL_Y + p_height / 2) and ballY <= (pR_Y + 3*(p_height / 4))))){

				ball_speedX = -(ball_speedX + WX/200);
				ball_speedY = -(ball_speedY - WY/600);

			}else if(((ballX >= pL_X and ballX <= (pL_X + p_width) ) and (ballY >= (pL_Y + 3*(p_height / 4)) and ballY <= (pL_Y + p_height))) or
				       ((ballX >= pR_X and ballX <= (pR_X + p_width) ) and (ballY >= (pL_Y + 3*(p_height / 4)) and ballY <= (pR_Y + p_height)))){
				
				ball_speedX = -(ball_speedX - WX/200);
				ball_speedY = -(ball_speedY + WY/300);

			}	

			//Checking if is 0
			if(ball_speedX == 0){
				ball_speedX = WX/160;//5
			}
			
			//Horizontal Movement
			if((ballX +ball_speedX) >= 0 and (ballX + ball_speedX) <= WX){
				ballX = ballX + ball_speedX;
			}else if(ballX <= 0){
				//Collision with left vertical edge

				//Resetting Ball Values
				ball_speedX = - ball_speedX;
				ballX = WX /2;
				ballY = WY /2;
				//Score Player Right
				pR_score ++;
			}else{
				//Collision with right vertical edge
				
				//Resetting Ball Values
				ball_speedX = - ball_speedX;
				ballX = WX /2;
				ballY = WY /2;
				//Score Player Left
				pL_score ++;
			}
		}//End While Score
		//Verify Champion
		if(!reset){
			if(pL_score > pR_score){
				print("Player Left Wins");
			}else{
				print("Player Right Wins");
			}
		}
	}//End IF Start
}//End Game Loop
