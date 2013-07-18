package buttons {
	
	import flash.display.MovieClip;
	import screens.D39Screen;
	import flash.events.MouseEvent;
	
	
	
	public class ConfigButton extends ButtonClass{
		
		private var configTable: MovieClip;
		private var screen: D39Screen;
		
		public function ConfigButton() 
		{
			super();
			this.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
			// constructor code
		}
		public function InitializeButton(tScreen: D39Screen, tConfigTable: MovieClip)
		{
			screen = tScreen;
			configTable = tConfigTable;
		}
		private function MouseUp(e: MouseEvent)
		{
			if (!this.IsBlocked())
			{
				if (screen.getChildByName(configTable.name)==null)
					screen.addChild(configTable);
				else screen.removeChild(configTable);
			}
		}
	}
	
}
