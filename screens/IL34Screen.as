package screens {
	
	import flash.display.MovieClip;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import blocks.IL34Block;
	
	public class IL34Screen extends BlockScreen {
		
		private var mainScreen: MainScreen;
		private var IL34Unit: IL34Block;
		
		public function InitializeIL34Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(IL34Unit, textBox,outButton);
		}
	
		public function IL34Screen()
		{
			IL34Unit=tIL34Unit;
			// constructor code
		}
		public function GoToNewScreen(e: MouseEvent)
		{
			mainScreen.InitializeGlobalScreen();
		}
	
	}
	
}
