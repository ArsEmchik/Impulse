package buttons
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import screens.D39Screen;
	
	public class ConfigButton extends ButtonClass
	{
		private var configTable:MovieClip;
		private var screen:D39Screen;
		
		public function ConfigButton()
		{
			super();
			
			addEventListener(MouseEvent.MOUSE_UP, MouseUp);
		}
		
		public function InitializeButton(tScreen:D39Screen, tConfigTable:MovieClip)
		{
			screen = tScreen;
			configTable = tConfigTable;
		}
		
		private function MouseUp(e:MouseEvent)
		{
			if (!IsBlocked())
			{
				if (screen.getChildByName(configTable.name) == null)
					screen.addChild(configTable);
				else
					screen.removeChild(configTable);
			}
		}
	}
}
