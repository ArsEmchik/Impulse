package screens {
	
	import flash.display.MovieClip;
	
	
	public class IO4Screen extends BlockScreen {
		
		private var mainScreen: MainScreen;
		private var IO4Unit: IO4Block;
		
		public function IO4Screen() {
			IO4Unit=tIO4Unit;
			// constructor code
		}
		
		public function InitializeIO4Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			this.InitializeBlockScreen(IO4Unit);
		}
		
	}
	
}
