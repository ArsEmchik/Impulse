package screens {
	
	import flash.display.MovieClip;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import blocks.D00Block;
	
	public class D00Screen extends BlockScreen {
		
		private var mainScreen: MainScreen;
		private var D00Unit: D00Block;
		
		public function InitializeD00Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(D00Unit, textBox,outButton);
		}
		
		public function D00Screen() {
			D00Unit=tD00Unit;
		}
		public function GoToNewScreen(e: MouseEvent)
		{
			mainScreen.InitializeGlobalScreen();
		}
	}
	
}
