package screens
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import screens.MainScreen;
	
	public class StartMainScreen extends MovieClip
	{
		private var main_screen: MainScreen;
		
		public function InitializeStartMainScreen(p_main_screen: MainScreen)
		{
			main_screen = p_main_screen;
			addEventListener(MouseEvent.CLICK, MouseClickStartMainScreen);
		}
		
		private function MouseClickStartMainScreen(e:MouseEvent)
		{
			main_screen.InitializeModeScreen();
		}
	}
}
