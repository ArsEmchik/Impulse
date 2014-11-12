package screens
{
	import blocks.IO4Block;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class IO4Screen extends BlockScreen
	{
		public var backButton1:Button;
		public var outButton:Button;
		
		public var textBox:TextField;
		public var textBoxNext:TextField;
		
		public var tIO4Unit:IO4Block;
		
		public function InitializeIO4Screen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			InitializeBlockScreen(tIO4Unit, textBox, outButton, textBoxNext);
		}
	}
}
