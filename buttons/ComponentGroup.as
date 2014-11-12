package buttons
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	
	public class ComponentGroup
	{
		var objects:Vector.<DisplayObject>;
		var screen:MovieClip;
		var removed:Boolean;
		
		public function ComponentGroup(p_screen:MovieClip, p_objects:Vector.<DisplayObject>)
		{
			screen = p_screen;
			objects = p_objects;
			SetVisible(false);
		}
		
		public function ClearAndSetInvisible()
		{
			if (!removed)
				SetVisible(false);
		}
		
		public function SetVisible(t_visible:Boolean)
		{
			var i:int;
			for (i = 0; i < objects.length; i++)
			{
				if (t_visible)
					screen.addChild(objects[i]);
				else
				{
					if (screen.contains(objects[i]))
						screen.removeChild(objects[i]);
				}
			}
			
			removed = !t_visible;
		}
	}
}