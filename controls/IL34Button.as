package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;

	
	public class IL34Button extends  ControlElement {
		
		
		public function IL34Button() 
		{
			// constructor code
			this.InitializeControlElement(ControlElement.S_BINARY,ControlElement.S_B_DEFAULT,true);
			this.addEventListener(MouseEvent.CLICK,SwitchMouseDown);
		}
		private function SwitchMouseDown(e: MouseEvent)
		{
			this.GoToState(ControlElement.S_B_CHOSEN,true);
			this.GoToState(ControlElement.S_B_DEFAULT,true);
		}
	}
	
}
