package blocks
{
	import flash.display.MovieClip;
	import flash.utils.Dictionary;

	public class ImpulsUnit extends MovieClip
	{
		protected var ControlElements: Vector.<ControlElement>;
		protected var ControlDictionary: Dictionary;
		
		public function ImpulsUnit()
		{
			ControlElements = new Vector.<ControlElement>();
			ControlDictionary = new Dictionary();
		}
		
		protected function InitializeControls()
		{
			var item: ControlElement;
			for each (item in ControlDictionary)
			{
				ControlElements.push(item);
			}
		}
		public function InitializeImpulsUnit()
		{
			
		}
	}
}