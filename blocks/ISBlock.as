package blocks {
	
	import flash.display.MovieClip;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class ISBlock extends ImpulsUnit {
		
		
		public function ISBlock() {
			super();
			this.ControlDictionary["Звуковой вызов"]=turnSwitch1;
			this.ControlDictionary["Включатель"]=turnSwitch2;
			
			this.ControlDictionary["ПВУ УСС зел. лампочка 1"]=greenBulb1;
			this.ControlDictionary["ПВУ УСС зел. лампочка 2"]=greenBulb2;
			this.ControlDictionary["ПВУ ВА зел. лампочка"]=greenBulb3;
			this.ControlDictionary["ПВУ ПСС зел. лампочка 1"]=greenBulb4;
			this.ControlDictionary["ПВУ ПСС зел. лампочка 2"]=greenBulb5;
			this.ControlDictionary["ПВУ ПСС зел. лампочка 3"]=greenBulb6;
			this.ControlDictionary["ПВУ ЛСС зел. лампочка 1"]=greenBulb7;
			this.ControlDictionary["ПВУ ЛСС зел. лампочка 2"]=greenBulb8;
			this.ControlDictionary["ПВУ ЛСС зел. лампочка 3"]=greenBulb9;
			this.ControlDictionary["ПС вкл. пит. зел. лампочка"]=greenBulb10;
			
			this.ControlDictionary["ПВУ ПСС кр. лампочка"]=redBulb1;
			this.ControlDictionary["ПВУ ЛСС кр. лампочка"]=redBulb2;
			this.ControlDictionary["ПС кр. лампочка"]=redBulb3;
			
			this.ControlDictionary["У ОК перемычка А"]=jumper1;
			this.ControlDictionary["У ОК перемычка Б"]=jumper2;
			this.ControlDictionary["У оконечная перемычка"]=jumper3;
			this.ControlDictionary["У промежуточная перемычка"]=jumper4;
			this.ControlDictionary["В ТА-ВА перемычка 1"]=jumper5;
			this.ControlDictionary["В ИС-ТА перемычка 1"]=jumper6;
			this.ControlDictionary["В ТА-ВА перемычка 2"]=jumper7;
			this.ControlDictionary["В ИС-ТА перемычка 2"]=jumper8;
			this.ControlDictionary["ПКВ-1 х10 пермычка 0"]=jumper9;
			this.ControlDictionary["ПКВ-1 х10 пермычка 1"]=jumper10;
			this.ControlDictionary["ПКВ-1 х10 пермычка 2"]=jumper11;
			this.ControlDictionary["ПКВ-1 х1 пермычка 0"]=jumper12;
			this.ControlDictionary["ПКВ-1 х1 пермычка 1"]=jumper13;
			this.ControlDictionary["ПКВ-1 х1 пермычка 2"]=jumper14;
			this.ControlDictionary["ПКВ-1 х1 пермычка 3"]=jumper15;
			this.ControlDictionary["ПКВ-1 х1 пермычка 4"]=jumper16;
			this.ControlDictionary["ПКВ-1 х1 пермычка 5"]=jumper17;
			this.ControlDictionary["ПКВ-1 х1 пермычка 6"]=jumper18;
			this.ControlDictionary["ПКВ-1 х1 пермычка 7"]=jumper19;
			this.ControlDictionary["ПКВ-1 х1 пермычка 8"]=jumper20;
			this.ControlDictionary["ПКВ-1 х1 пермычка 9"]=jumper21;
			this.ControlDictionary["ПКВ-2 х10 пермычка 0"]=jumper22;
			this.ControlDictionary["ПКВ-2 х10 пермычка 1"]=jumper23;
			this.ControlDictionary["ПКВ-2 х10 пермычка 2"]=jumper24;
			this.ControlDictionary["ПКВ-2 х1 пермычка 0"]=jumper25;
			this.ControlDictionary["ПКВ-2 х1 пермычка 1"]=jumper26;
			this.ControlDictionary["ПКВ-2 х1 пермычка 2"]=jumper27;
			this.ControlDictionary["ПКВ-2 х1 пермычка 3"]=jumper28;
			this.ControlDictionary["ПКВ-2 х1 пермычка 4"]=jumper29;
			this.ControlDictionary["ПКВ-2 х1 пермычка 5"]=jumper30;
			this.ControlDictionary["ПКВ-2 х1 пермычка 6"]=jumper31;
			this.ControlDictionary["ПКВ-2 х1 пермычка 7"]=jumper32;
			this.ControlDictionary["ПКВ-2 х1 пермычка 8"]=jumper33;
			this.ControlDictionary["ПКВ-2 х1 пермычка 9"]=jumper34;
			this.ControlDictionary["ПС +9+5 пермычка"]=jumper35;
			this.ControlDictionary["ПС +12-12 пермычка"]=jumper36;
			this.ControlDictionary["ПС +7-7 пермычка"]=jumper37;
			this.ControlDictionary["ПС источник напряжения пермычка"]=jumper38;
			
			InitializeControls();
			CreateCommunication();
		}
		
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton);
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
				default: throw new Error("Нет такого мода");
			}
			
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		
		private function InitializeTrainingSequence()
		{
			this.AddToTraining(ControlDictionary["У ОК перемычка А"],"Вставте Перемычку",ControlElement.S_B_CHOSEN);
		}
		
		private function InitializeWorkingSequence()
		{
			this.AddToTraining(ControlDictionary["Включатель"],"Включите тумблер",ControlElement.S_B_CHOSEN);
		}		
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
		}
		
		private function SwitchMouseClick(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["ПС вкл. пит. зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}
	
}
