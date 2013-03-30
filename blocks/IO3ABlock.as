package blocks  {
	
	import flash.display.MovieClip;
	
	
	public class IO3ABlock extends ImpulsUnit {
		
		
		public function IO3ABlock() {
			super();
			
			InitializeControls();
			CreateCommunication();
			// constructor code
		}
		
		private function CreateCommunication()
		{
			//(ControlDictionary["ФП включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
		}
	}
	
}
