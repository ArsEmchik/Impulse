package screens
{
	import blocks.IPBlock;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class IPScreen extends BlockScreen
	{
		public var backButton1: Button;
		public var outButton: Button;
		
		public var textBox: TextField;
		public var textBoxNext: TextField;
		
		public var tIPUnit:IPBlock;
		
		public function InitializeIPScreen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			InitializeBlockScreen(tIPUnit, textBox, outButton, textBoxNext);
		}
	}
}
