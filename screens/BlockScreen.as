package screens
{
	import flash.display.MovieClip;
	import blocks.ImpulsUnit;
	import flash.text.TextField;

	public class BlockScreen extends MovieClip
	{
		public var BlockUnit: ImpulsUnit;
		
		public function BlockScreen()
		{
			
		}
		public function InitializeBlockScreen(p_BlockUnit: ImpulsUnit, textBox: TextField)
		{
			BlockUnit=p_BlockUnit;
			BlockUnit.InitializeImpulsUnit(textBox);
		}
	}
}