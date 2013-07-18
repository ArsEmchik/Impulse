package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import blocks.D39Block;
	
	
	public class D39Screen extends BlockScreen {
		
		private var mainScreen: MainScreen;
		private var D39Unit: D39Block;		
		
		public function D39Screen() 
		{
			D39Unit=tD39Unit;
		}
		public function GoToNewScreen(e: MouseEvent)
		{
			mainScreen.InitializeGlobalScreen();
		}	
		public function InitializeD39Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(D39Unit, textBox,outButton);
		}		
	}
	
}
