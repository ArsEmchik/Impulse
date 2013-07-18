package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;


	public class Tumble extends ControlElement
	{
		
		public function Tumble() 
		{
			// constructor code
			this.InitializeControlElement(ControlElement.S_3,1,true);
			this.addEventListener(MouseEvent.CLICK,SwitchMouseDown);
		}
		private function SwitchMouseDown(e: MouseEvent)
		{
			var newState: int;
			if (this.CurrentState==3)
				newState=1;
			else newState=this.CurrentState+1;
			this.GoToState(newState,true);
		}
	}
	
}
