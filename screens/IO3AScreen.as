package screens
{
	import blocks.IO3ABlock;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class IO3AScreen extends BlockScreen
	{
		public var backButton1:Button;
		public var outButton:Button;
		
		public var textBox:TextField;
		public var textBoxNext:TextField;
		
		public var tIO3AUnit:IO3ABlock;
		
		public function InitializeIO3AScreen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			InitializeBlockScreen(tIO3AUnit, textBox, outButton, textBoxNext);
		}
	}
}
