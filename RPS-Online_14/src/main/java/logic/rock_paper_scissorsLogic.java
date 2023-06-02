package logic;

public class rock_paper_scissorsLogic {

	public static int decide_victory_or_defeat(int selectBottom, int random) {
		
		//0:引き分け 1:勝ち 2:負け 3:エラー
		int r = 0;
		if(selectBottom == random) {
			return r;
			
		}else if(selectBottom == 0 && random == 1 ||
				 selectBottom == 1 && random == 2 ||
				 selectBottom == 2 && random == 0
				)
		{
			r = 1;
			return r;		
			
		}else if(selectBottom == 0 && random == 2 ||
				 selectBottom == 1 && random == 0 ||
				 selectBottom == 2 && random == 1 
				)
		{
			r = 2;
		return r;
		}
		r = 3;
		return r;
	}
}
