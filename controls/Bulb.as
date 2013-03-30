package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	
	public class Bulb extends ControlElement {
		
		
		public function Bulb() 
		{
			this.InitializeControlElement(ControlElement.S_BINARY,ControlElement.S_B_DEFAULT,false);
		}
	}
	
}
