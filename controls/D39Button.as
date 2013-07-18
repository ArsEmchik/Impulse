package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	
	public class D39Button extends ControlElement {
		
		private var type: int;
		
		public function D39Button() 
		{
			this.InitializeControlElement(ControlElement.S_BINARY,ControlElement.S_B_DEFAULT,true);
			this.addEventListener(MouseEvent.CLICK,SwitchMouseDown);			
		}
		public function ChangeType(newType: int)
		{
			type = newType;
			button.gotoAndStop(type+1);
		}
		protected override function GoToBinaryState()
		{
			super.GoToBinaryState();
			button.gotoAndStop(type+1);
		}
		private function SwitchMouseDown(e: MouseEvent)
		{
			var newState: int;
			if (this.CurrentState==ControlElement.S_B_DEFAULT)
				newState=ControlElement.S_B_CHOSEN;
			else newState=ControlElement.S_B_DEFAULT;
			this.GoToState(newState,true);
		}		
	}
}
