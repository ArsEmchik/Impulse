package screens
{
	import flash.display.MovieClip;
	import blocks.ImpulsUnit;

	public class BlockScreen extends MovieClip
	{
		public var BlockUnit: ImpulsUnit;
		
		public function BlockScreen()
		{
			
		}
		public function InitializeBlockScreen(p_BlockUnit: ImpulsUnit)
		{
			BlockUnit=p_BlockUnit;
			BlockUnit.InitializeImpulsUnit();
		}
	}
}