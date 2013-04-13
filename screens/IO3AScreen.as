package screens {
	
	import flash.display.MovieClip;
	import blocks.IO3ABlock;
	
	
	public class IO3AScreen extends BlockScreen {
		
		private var mainScreen: MainScreen;
		private var IO3AUnit: IO3ABlock;
		
		public function InitializeIO3AScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			this.InitializeBlockScreen(IO3AUnit,null);
		}
	
		public function IO3AScreen() {
			IO3AUnit=tIO3AUnit;
			// constructor code
		}
	}
	
}
