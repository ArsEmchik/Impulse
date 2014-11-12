package buttons
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	
	public class ButtonClass extends MovieClip
	{
		public static const OVER:int = 0;
		public static const STAND:int = 1;
		public static const DOWN:int = 2;
		
		private var hasGlow:Boolean = false;
		
		private var greenFilter:GlowFilter = new GlowFilter(0x00FF00, 1, 16, 16, 5);
		
		public var type:int = STAND;
		private var blocked:Boolean = false;
		private var string_message:String;
		private var onMouseOver:Function;
		
		public function set HasGlow(value:Boolean)
		{
			hasGlow = value;
			filters = [greenFilter];
		}
		
		public function ButtonClass()
		{
			gotoAndStop("MouseOut");
			
			addEventListener(MouseEvent.ROLL_OVER, RollOver);
			addEventListener(MouseEvent.ROLL_OUT, RollOut);
			addEventListener(MouseEvent.MOUSE_DOWN, MouseDown);
			addEventListener(MouseEvent.MOUSE_UP, MouseUp);
		}
		
		private function RollOver(e:MouseEvent)
		{
			if (!blocked)
			{
				filters = [];
				gotoAndStop("MouseOver");
			}
			
			if (onMouseOver != null)
			{
				onMouseOver(string_message);
			}
			type = OVER;
		}
		
		private function RollOut(e:MouseEvent)
		{
			if (!blocked)
			{
				if (hasGlow)
				{
					filters = [greenFilter];
				}
				else
				{
					filters = [];
				}
				gotoAndStop("MouseOut");
			}
			
			if (onMouseOver != null)
			{
				onMouseOver("");
			}
			type = STAND;
		}
		
		private function MouseDown(e:MouseEvent)
		{
			if (!blocked)
				gotoAndStop("MouseDown");
			type = DOWN;
		}
		
		private function MouseUp(e:MouseEvent)
		{
			if (!blocked)
				gotoAndStop("MouseOver");
			type = OVER;
		}
		
		public function Block()
		{
			blocked = true;
			gotoAndStop("MouseBlock");
		}
		
		public function UnBlock()
		{
			blocked = false;
			if (hasGlow)
			{
				filters = [greenFilter];
			}
			else
			{
				filters = [];
			}
			gotoAndStop("MouseOut");
		}
		
		public function IsBlocked():Boolean
		{
			return blocked;
		}
		
		public function ClearButton()
		{
			removeEventListener(MouseEvent.ROLL_OVER, RollOver);
			removeEventListener(MouseEvent.ROLL_OUT, RollOut);
			removeEventListener(MouseEvent.MOUSE_DOWN, MouseDown);
			removeEventListener(MouseEvent.MOUSE_UP, MouseUp);
		}
		
		public function AddOverFun(p_fun:Function, p_string_message:String)
		{
			onMouseOver = p_fun;
			string_message = p_string_message;
		}
	}
}