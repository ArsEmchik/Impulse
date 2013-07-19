package screens {
	
	import flash.display.MovieClip;
	import blocks.InputBlock;
	import flash.events.MouseEvent;
	


	public class BlockInputScreen extends BlockScreen {
		
		private var inputBlock: InputBlock;		
		
		public function BlockInputScreen() 
		{
			inputBlock=tInputBlock;
			this.block = tInputBlock;
		}
		
		public function InitializeInputBlockScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(inputBlock,textBox,outButton);
		}		
	}
	
}
