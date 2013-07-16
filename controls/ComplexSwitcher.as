package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	
	public class ComplexSwitcher extends ControlElement {
		
		
		public function ComplexSwitcher() {
			this.InitializeControlElement(ControlElement.S_11,ControlElement.S_11_STATE1,true);
			this.addEventListener(MouseEvent.CLICK,SwitchMouseDown);
			// constructor code
		}
		private function SwitchMouseDown(e: MouseEvent)
		{
			var newState: int;
			if (this.CurrentState!=ControlElement.S_11_STATE11)
				newState=this.CurrentState+1;
			else newState=ControlElement.S_11_STATE1;
			this.GoToState(newState,true);
		}		
	}
	
}
