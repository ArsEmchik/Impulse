package screens
{
	import blocks.ISBlock;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class ISScreen extends BlockScreen
	{
		public var backButton1: Button;
		public var outButton: Button;
		
		public var textBox: TextField;
		public var textBoxNext: TextField;
		
		public var tISUnit:ISBlock;
		
		public function InitializeISScreen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			InitializeBlockScreen(tISUnit, textBox, outButton, textBoxNext);
		}
	}
}
