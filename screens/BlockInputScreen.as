package screens
{
	import blocks.InputBlock;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class BlockInputScreen extends BlockScreen
	{
		public var backButton1: Button;
		public var outButton: Button;
		
		public var textBox: TextField;
		public var textBoxNext: TextField;
		
		public var tInputBlock:InputBlock;
		
		public function InitializeInputBlockScreen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			
			InitializeBlockScreen(tInputBlock, textBox, outButton, textBoxNext);
		}
	}
}
