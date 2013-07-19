package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import blocks.D39Block;
	
	
	public class D39Screen extends BlockScreen {
		
		private var D39Unit: D39Block;		
		
		public function D39Screen() 
		{
			configButton.InitializeButton(this,tConfigTable);
			this.removeChild(tConfigTable);
			D39Unit=tD39Unit;
			this.block = D39Unit;
		}	
		public function InitializeD39Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(D39Unit, textBox,outButton);
		}		
	}
	
}
