package blocks {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import controls.D39Button;
	
	
	public class D39Block extends ImpulsUnit
	{
		public function D39Block() 
		{
			super();
			this.ControlDictionary["Выключалка"]=turnOnOff1;
			this.ControlDictionary["Панель"]=panel1;
			this.ControlDictionary["Кнопка"]=button1;
			InitializeControls();
			CreateCommunication();
		}
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton);
			InitializeSequence();
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		private function InitializeSequence()
		{
			
		}
		private function CreateCommunication()
		{
			(ControlDictionary["Кнопка"]  as D39Button).ChangeType(1);
			(ControlDictionary["Выключалка"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
		}
		
		private function SwitchMouseClick(e: MouseEvent)
		{
			if (!(ControlDictionary["Панель"] as ControlElement).IsBlocked())
			{
				var newState: int = (ControlDictionary["Панель"] as ControlElement).CurrentState;
				if (newState==100)
					newState=0;
				else newState++;
				(ControlDictionary["Панель"] as ControlElement).GoToState(newState);
			}
		}		
	}
	
}
