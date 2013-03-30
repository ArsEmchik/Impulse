package buttons
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import fl.controls.RadioButton;

	public class ComponentGroup
	{
		var objects: Vector.<DisplayObject>;
		var screen: MovieClip;
		var removed: Boolean;
		
		public function ComponentGroup(p_screen: MovieClip, p_objects: Vector.<DisplayObject>)
		{
			screen=p_screen;
			objects=p_objects;
			SetVisible(false);
		}
		public function ClearAndSetInvisible()
		{
			if (!removed)
				SetVisible(false);
			ClearInfo();
		}
		public function SetVisible(t_visible: Boolean)
		{
			var i: int;
			for (i=0; i<objects.length; i++)
			{
				if (t_visible)
					screen.addChild(objects[i]);
				else screen.removeChild(objects[i]);
			}
			removed=!t_visible;
		}
		private function ClearInfo()
		{
			var i: int;
			var first_radio: Boolean=true;			
			for (i=0; i<objects.length; i++)
			{
			}
		}
	}
}