package screens
{
	import flash.display.MovieClip;
	import blocks.ImpulsUnit;
	import flash.text.TextField;
	import fl.controls.Button;

	public class BlockScreen extends MovieClip
	{
		public var BlockUnit: ImpulsUnit;
		
		public function BlockScreen()
		{
			
		}
		public function InitializeBlockScreen(p_BlockUnit: ImpulsUnit, textBox: TextField, outButton: Button)
		{
			BlockUnit=p_BlockUnit;
			BlockUnit.InitializeImpulsUnit(textBox,outButton);
		}
	}
}