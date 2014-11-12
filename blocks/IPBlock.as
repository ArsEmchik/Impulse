package blocks
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class IPBlock extends ImpulsUnit
	{
		public var turnBulb:TurnOnOffBulb;
		public var turnOnOff:TurnOnOff;
		public var redBulb1:RedBulb;
		public var greenBulb1:GreenBulb;
		public var redBulb2:RedBulb;
		public var greenBulb2:GreenBulb;
		public var redBulb3:RedBulb;
		public var redBulb4:RedBulb;
		public var Jumper1:Jumper;
		public var Jumper2:Jumper;
		public var Jumper3:Jumper;
		
		public function IPBlock()
		{
			super();
			
			ControlDictionary["ФП лампа"] = turnBulb;
			ControlDictionary["ФП включатель"] = turnOnOff;
			ControlDictionary["У кр. лампа"] = redBulb1;
			ControlDictionary["У зел. лампа"] = greenBulb1;
			ControlDictionary["БУ кр. лампа"] = redBulb2;
			ControlDictionary["БУ зел. лампа"] = greenBulb2;
			ControlDictionary["УПР кр. лампа"] = redBulb3;
			ControlDictionary["ГОЧ кр. лампа"] = redBulb4;
			ControlDictionary["У перемычка"] = Jumper1;
			ControlDictionary["БУ перемычка"] = Jumper2;
			ControlDictionary["ГОЧ перемычка"] = Jumper3;
			
			InitializeControls();
			CreateCommunication();
		}
		
		public override function InitializeImpulsUnit(pDecriptionField:TextField, outButton:Button, txtNext:TextField)
		{
			super.InitializeImpulsUnit(pDecriptionField, outButton, txtNext);
			switch (ModeInfo.modeInfo.Mode)
			{
				case ModeInfo.M_PREPARING: 
					InitializeTrainingSequence();
					break;
				case ModeInfo.M_WORKING: 
					InitializeTrainingSequence();
					PrepareToWork();
					InitializeWorkingSequence();
					break;
				default: 
					throw new Error("Нет такого мода");
			}
			
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		
		private function InitializeWorkingSequence()
		{
			AddToTraining(ControlDictionary["ФП включатель"], "Включите питание", ControlElement.S_B_CHOSEN);
		}
		
		private function InitializeTrainingSequence()
		{
			AddToTraining(ControlDictionary["ФП включатель"], "Включите питание для проверки работоспособности", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ФП включатель"], "Прибор к работе готов. Выключите питание", ControlElement.S_B_DEFAULT);
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["ФП включатель"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick);
		}
		
		private function SwitchMouseClick(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["ФП включатель"] as ControlElement).CurrentState;
			(ControlDictionary["ФП лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["У зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["БУ зел. лампа"] as ControlElement).GoToState(newState);
		}
	}

}
