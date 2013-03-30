package buttons
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	public class ButtonClass extends MovieClip
	{
		public static const OVER: int =0;
		public static const STAND: int =1;
		public static const DOWN: int =2;
		
		private var blocked: Boolean=false;
		public var type: int=1;
		private var string_message: String;
		private var fun: Function;
		
		public function ButtonClass()
		{
			this.gotoAndStop("MouseOut");
			this.addEventListener(MouseEvent.ROLL_OVER,RollOver);
			this.addEventListener(MouseEvent.ROLL_OUT,RollOut);
			this.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
			this.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
		}
		private function RollOver(e: MouseEvent)
		{
			if (!blocked)
			{
				this.gotoAndStop("MouseOver");
				if (fun!=null)
					fun(string_message);
			}
			type=OVER;
		}
		private function RollOut(e: MouseEvent)
		{
			if (!blocked)
			{
				this.gotoAndStop("MouseOut");
				if (fun!=null)
					fun("");				
			}
			type=STAND;
		}				
		private function MouseDown(e: MouseEvent)
		{
			if (!blocked)
				this.gotoAndStop("MouseDown");
			type=DOWN;
		}
		private function MouseUp(e: MouseEvent)
		{
			if (!blocked)
				this.gotoAndStop("MouseOver");
			type=OVER;
		}		
		public function Block()
		{
			blocked=true;
			this.gotoAndStop("MouseBlock");
		}
		public function UnBlock()
		{
			blocked=false;
			this.gotoAndStop("MouseOut");
		}
		public function IsBlocked(): Boolean
		{
			return(this.blocked);
		}
		public function ClearButton()
		{
			this.removeEventListener(MouseEvent.ROLL_OVER,RollOver);
			this.removeEventListener(MouseEvent.ROLL_OUT,RollOut);
			this.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
			this.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);			
		}
		public function AddOverFun(p_fun: Function, p_string_message: String)
		{
			fun=p_fun;
			string_message=p_string_message;
		}
	}
}