package blocks {
	
	import flash.display.MovieClip;
	import fl.controls.Button;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	
	
	public class ITABlock extends ImpulsUnit {
		
		
		public function ITABlock() {
			super();
			this.ControlDictionary["Включатель"]=turnSwitch;
			
			this.ControlDictionary["ОП-1 сигн зел. лампочка 1"]=greenBulb1;
			this.ControlDictionary["ОП-1 сигн зел. лампочка 2"]=greenBulb2;
			this.ControlDictionary["ОП-1 сигн зел. лампочка 3"]=greenBulb3;
			this.ControlDictionary["ОП-1 сигн зел. лампочка 4"]=greenBulb4;
			this.ControlDictionary["ОП-2 сигн зел. лампочка 1"]=greenBulb5;
			this.ControlDictionary["ОП-2 сигн зел. лампочка 2"]=greenBulb6;
			this.ControlDictionary["ОП-2 сигн зел. лампочка 3"]=greenBulb7;
			this.ControlDictionary["ОП-2 сигн зел. лампочка 4"]=greenBulb8;
			this.ControlDictionary["ОП-3 сигн зел. лампочка 1"]=greenBulb9;
			this.ControlDictionary["ОП-3 сигн зел. лампочка 2"]=greenBulb10;
			this.ControlDictionary["ОП-3 сигн зел. лампочка 3"]=greenBulb11;
			this.ControlDictionary["ОП-3 сигн зел. лампочка 4"]=greenBulb12;		
			this.ControlDictionary["ОГК контроль зел. лампочка"]=greenBulb13;
			this.ControlDictionary["П6 вкл зел. лампочка"]=greenBulb14;
			
			this.ControlDictionary["ОАК-1 кр. лампочка 1"]=redBulb1;
			this.ControlDictionary["ОАК-1 кр. лампочка 2"]=redBulb2;
			this.ControlDictionary["ОП-1 кр. лампочка 1"]=redBulb3;
			this.ControlDictionary["ОП-1 кр. лампочка 2"]=redBulb4;
			this.ControlDictionary["ОП-1 кр. лампочка 3"]=redBulb5;
			this.ControlDictionary["ОП-1 кр. лампочка 4"]=redBulb6;
			this.ControlDictionary["ОАК-2 кр. лампочка 1"]=redBulb7;
			this.ControlDictionary["ОАК-2 кр. лампочка 2"]=redBulb8;
			this.ControlDictionary["ОАК-3 кр. лампочка 1"]=redBulb9;
			this.ControlDictionary["ОАК-3 кр. лампочка 2"]=redBulb10;
			this.ControlDictionary["ОП-2 кр. лампочка 1"]=redBulb11;
			this.ControlDictionary["ОП-2 кр. лампочка 2"]=redBulb12;
			this.ControlDictionary["ОП-2 кр. лампочка 3"]=redBulb13;
			this.ControlDictionary["ОП-2 кр. лампочка 4"]=redBulb14;			
			this.ControlDictionary["ОАК-4 кр. лампочка 1"]=redBulb15;
			this.ControlDictionary["ОАК-4 кр. лампочка 2"]=redBulb16;
			this.ControlDictionary["ОАК-5 кр. лампочка 1"]=redBulb17;
			this.ControlDictionary["ОАК-5 кр. лампочка 2"]=redBulb18;
			this.ControlDictionary["ОП-3 кр. лампочка 1"]=redBulb19;
			this.ControlDictionary["ОП-3 кр. лампочка 2"]=redBulb20;
			this.ControlDictionary["ОП-3 кр. лампочка 3"]=redBulb21;
			this.ControlDictionary["ОП-3 кр. лампочка 4"]=redBulb22;
			this.ControlDictionary["ОГК кр. лампочка 1"]=redBulb23;
			this.ControlDictionary["ОГК кр. лампочка 2"]=redBulb24;
			this.ControlDictionary["ОГК кр. лампочка 3"]=redBulb25;
			this.ControlDictionary["П6 вкл кр. лампочка"]=redBulb26;
			
			this.ControlDictionary["ОАК-1 пермычка пер 1"]=jumper1;
			this.ControlDictionary["ОАК-1 пермычка пр 1"]=jumper2;
			this.ControlDictionary["ОАК-1 пермычка ТР 1"]=jumper3;
			this.ControlDictionary["ОАК-1 пермычка ТР 2"]=jumper4;
			this.ControlDictionary["ОАК-1 пермычка ТР 3"]=jumper5;
			this.ControlDictionary["ОАК-1 пермычка ТР 4"]=jumper6;
			this.ControlDictionary["ОАК-1 пермычка ОК 1"]=jumper7;
			this.ControlDictionary["ОАК-1 пермычка ОК 2"]=jumper8;
			this.ControlDictionary["ОАК-1 пермычка ОК 3"]=jumper9;
			this.ControlDictionary["ОАК-1 пермычка ОК 4"]=jumper10;
			this.ControlDictionary["ОАК-1 пермычка пер 2"]=jumper11;
			this.ControlDictionary["ОАК-2 пермычка пр 2"]=jumper12;
			this.ControlDictionary["ОАК-2 пермычка пер 1"]=jumper13;
			this.ControlDictionary["ОАК-2 пермычка пр 1"]=jumper14;
			this.ControlDictionary["ОАК-2 пермычка ТР 1"]=jumper15;
			this.ControlDictionary["ОАК-2 пермычка ТР 2"]=jumper16;
			this.ControlDictionary["ОАК-2 пермычка ТР 3"]=jumper17;
			this.ControlDictionary["ОАК-2 пермычка ТР 4"]=jumper18;
			this.ControlDictionary["ОАК-2 пермычка ОК 1"]=jumper19;
			this.ControlDictionary["ОАК-2 пермычка ОК 2"]=jumper20;
			this.ControlDictionary["ОАК-2 пермычка ОК 3"]=jumper21;
			this.ControlDictionary["ОАК-2 пермычка ОК 4"]=jumper22;
			this.ControlDictionary["ОАК-2 пермычка пер 2"]=jumper23;
			this.ControlDictionary["ОАК-2 пермычка пр 2"]=jumper24;
			this.ControlDictionary["ОАК-3 пермычка пер 1"]=jumper25;
			this.ControlDictionary["ОАК-3 пермычка пр 1"]=jumper26;
			this.ControlDictionary["ОАК-3 пермычка ТР 1"]=jumper27;
			this.ControlDictionary["ОАК-3 пермычка ТР 2"]=jumper28;
			this.ControlDictionary["ОАК-3 пермычка ТР 3"]=jumper29;
			this.ControlDictionary["ОАК-3 пермычка ТР 4"]=jumper30;
			this.ControlDictionary["ОАК-3 пермычка ОК 1"]=jumper31;
			this.ControlDictionary["ОАК-3 пермычка ОК 2"]=jumper32;
			this.ControlDictionary["ОАК-3 пермычка ОК 3"]=jumper33;
			this.ControlDictionary["ОАК-3 пермычка ОК 4"]=jumper34;
			this.ControlDictionary["ОАК-3 пермычка пер 2"]=jumper35;
			this.ControlDictionary["ОАК-3 пермычка пр 2"]=jumper36;
			this.ControlDictionary["ОАК-4 пермычка пер 1"]=jumper37;
			this.ControlDictionary["ОАК-4 пермычка пр 1"]=jumper38;
			this.ControlDictionary["ОАК-4 пермычка ТР 1"]=jumper39;
			this.ControlDictionary["ОАК-4 пермычка ТР 2"]=jumper40;
			this.ControlDictionary["ОАК-4 пермычка ТР 3"]=jumper41;
			this.ControlDictionary["ОАК-4 пермычка ТР 4"]=jumper42;
			this.ControlDictionary["ОАК-4 пермычка ОК 1"]=jumper43;
			this.ControlDictionary["ОАК-4 пермычка ОК 2"]=jumper44;
			this.ControlDictionary["ОАК-4 пермычка ОК 3"]=jumper45;
			this.ControlDictionary["ОАК-4 пермычка ОК 4"]=jumper46;
			this.ControlDictionary["ОАК-4 пермычка пер 2"]=jumper47;
			this.ControlDictionary["ОАК-4 пермычка пр 2"]=jumper48;
			this.ControlDictionary["ОАК-5 пермычка пер 1"]=jumper49;
			this.ControlDictionary["ОАК-5 пермычка пр 1"]=jumper50;
			this.ControlDictionary["ОАК-5 пермычка ТР 1"]=jumper51;
			this.ControlDictionary["ОАК-5 пермычка ТР 2"]=jumper52;
			this.ControlDictionary["ОАК-5 пермычка ТР 3"]=jumper53;
			this.ControlDictionary["ОАК-5 пермычка ТР 4"]=jumper54;
			this.ControlDictionary["ОАК-5 пермычка ОК 1"]=jumper55;
			this.ControlDictionary["ОАК-5 пермычка ОК 2"]=jumper56;
			this.ControlDictionary["ОАК-5 пермычка ОК 3"]=jumper57;
			this.ControlDictionary["ОАК-5 пермычка ОК 4"]=jumper58;
			this.ControlDictionary["ОАК-5 пермычка пер 2"]=jumper59;
			this.ControlDictionary["ОАК-5 пермычка пр 2"]=jumper60;
			this.ControlDictionary["ОГК перемычка канал 1"]=jumper61;
			this.ControlDictionary["ОГК перемычка канал 2"]=jumper62;
			this.ControlDictionary["ОГК перемычка шлейф 1"]=jumper63;
			this.ControlDictionary["ОГК перемычка шлейф 2"]=jumper64;
			this.ControlDictionary["ОГК перемычка ОГК 1"]=jumper65;
			this.ControlDictionary["ОГК перемычка ОГК 2"]=jumper66;
			this.ControlDictionary["П6 перемычка 27"]=jumper67;
			this.ControlDictionary["П6 перемычка 12"]=jumper68;
			this.ControlDictionary["П6 перемычка 7.5"]=jumper69;
			this.ControlDictionary["П6 перемычка 5"]=jumper70;
			
			InitializeControls();
			CreateCommunication();
		}
		
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton);
			InitializeTrainingSequence();
			SetMode(ModeInfo.MM_TRAINIGWITHHINT);
		}
		
		private function InitializeTrainingSequence()
		{
			this.AddToTraining(ControlDictionary["Включатель"],"Включите Тумблер",ControlElement.S_B_CHOSEN);
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick1);
		}
		
		private function SwitchMouseClick1(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["П6 вкл зел. лампочка"] as ControlElement).GoToState(newState);
		}
		
	}
	
	
	
	
	
}
