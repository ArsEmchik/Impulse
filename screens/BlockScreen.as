package screens
{
	import flash.display.MovieClip;
	import blocks.ImpulsUnit;
	import flash.text.TextField;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import blocks.ModeInfo;
	
	public class BlockScreen extends MovieClip
	{
		public var BlockUnit:ImpulsUnit;
		public var mainScreen:MainScreen;
		public var block:ImpulsUnit;
		
		public function InitializeBlockScreen(p_BlockUnit:ImpulsUnit, textBox:TextField, outButton:Button, txtNext:TextField)
		{
			BlockUnit = p_BlockUnit;
			BlockUnit.InitializeImpulsUnit(textBox, outButton, txtNext);
		}
		
		public function GoToNewScreen(e:MouseEvent)
		{
			if (ModeInfo.modeInfo.MainMode == ModeInfo.MM_CONTROL)
			{
				block.TestForErrors();
			}
			
			mainScreen.InitializeGlobalScreen();
		}
		
		public function backScreen(e:MouseEvent)
		{
			ModeInfo.modeInfo.blockInfo[ModeInfo.modeInfo.currentBlock].blockDone = false;
			
			mainScreen.InitializeGlobalScreen();
		}
	}
}