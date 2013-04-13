package blocks  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class IO3ABlock extends ImpulsUnit {
		
		
		public function IO3ABlock() {
			super();
			this.ControlDictionary["Включатель"]=turnSwitch;
			this.ControlDictionary["ЦСА зел. лампочка"]=greenBulb1;
			this.ControlDictionary["ГА3 зел. лампочка"]=greenBulb2;
			this.ControlDictionary["ЦА3-1 зел. лампочка"]=greenBulb3;
			this.ControlDictionary["ЦА3-2 зел. лампочка"]=greenBulb4;
			this.ControlDictionary["ЦА3-3 зел. лампочка"]=greenBulb5;
			this.ControlDictionary["ЦА3-4 зел. лампочка"]=greenBulb6;
			this.ControlDictionary["ЦА3-5 зел. лампочка"]=greenBulb7;
			this.ControlDictionary["ЦА3-6 зел. лампочка"]=greenBulb8;
			this.ControlDictionary["ЦА3-7 зел. лампочка"]=greenBulb9;
			this.ControlDictionary["ЦА3-8 зел. лампочка"]=greenBulb10;
			this.ControlDictionary["ЦА3-9 зел. лампочка"]=greenBulb11;
			this.ControlDictionary["П2 вкл зел. лампочка"]=greenBulb12;			
			this.ControlDictionary["ФСЧ3 кр. лампочка"]=redBulb1;
			this.ControlDictionary["ТА2-1 кр. лампочка"]=redBulb2;
			this.ControlDictionary["ТА2-2 кр. лампочка"]=redBulb3;
			this.ControlDictionary["ГА3 кр. лампочка"]=redBulb4;
			this.ControlDictionary["ЦА3-1 кр. лампочка"]=redBulb5;
			this.ControlDictionary["ЦА3-2 кр. лампочка"]=redBulb6;
			this.ControlDictionary["ЦА3-3 кр. лампочка"]=redBulb7;
			this.ControlDictionary["ЦА3-4 кр. лампочка"]=redBulb8;
			this.ControlDictionary["ЦА3-5 кр. лампочка"]=redBulb9;
			this.ControlDictionary["ЦА3-6 кр. лампочка"]=redBulb10;
			this.ControlDictionary["ЦА3-7 кр. лампочка"]=redBulb11;
			this.ControlDictionary["ЦА3-8 кр. лампочка"]=redBulb12;
			this.ControlDictionary["ЦА3-9 кр. лампочка"]=redBulb13;
			this.ControlDictionary["П2 вкл кр. лампочка"]=redBulb14;
			this.ControlDictionary["Неименованая Правая 1"]=jumper1;
			this.ControlDictionary["Неименованая Правая 2"]=jumper2;
			this.ControlDictionary["Неименованая Правая 3"]=jumper3;
			this.ControlDictionary["Неименованая Правая 4"]=jumper4;
			this.ControlDictionary["Неименованая Правая 5"]=jumper5;
			this.ControlDictionary["Неименованая Правая 6"]=jumper6;
			this.ControlDictionary["Неименованая Правая 7"]=jumper7;
			this.ControlDictionary["Неименованая Правая 8"]=jumper8;
			this.ControlDictionary["ФСЧ3 пермычка"]=jumper9;
			this.ControlDictionary["ТА2-1 пермычка 1"]=jumper10;
			this.ControlDictionary["ТА2-1 пермычка 0"]=jumper11;
			this.ControlDictionary["ТА2-1 пермычка КТ"]=jumper12;
			this.ControlDictionary["ТА2-1 пермычка 2"]=jumper13;
			this.ControlDictionary["ТА2-1 пермычка вниз"]=jumper14;
			this.ControlDictionary["ТА2-2 пермычка 1"]=jumper15;
			this.ControlDictionary["ТА2-2 пермычка 0"]=jumper16;
			this.ControlDictionary["ТА2-2 пермычка КТ"]=jumper17;
			this.ControlDictionary["ТА2-2 пермычка 2"]=jumper18;
			this.ControlDictionary["ТА2-2 пермычка вниз"]=jumper19;
			this.ControlDictionary["СКА2 перемычка 1-К"]=jumper20;
			this.ControlDictionary["СКА2 перемычка 0-К"]=jumper21;
			this.ControlDictionary["СКА2 перемычка Д-К"]=jumper22;
			this.ControlDictionary["СКА2 перемычка 1-С"]=jumper23;
			this.ControlDictionary["СКА2 перемычка 0-С"]=jumper24;
			this.ControlDictionary["СКА2 перемычка Д-С"]=jumper25;
			this.ControlDictionary["СКА2 перемычка 2"]=jumper26;
			this.ControlDictionary["СКА2 перемычка вниз"]=jumper27;
			this.ControlDictionary["ЦСА перемычка 7"]=jumper28;
			this.ControlDictionary["ЦСА перемычка дельта 3"]=jumper29;
			this.ControlDictionary["ЦСА перемычка 3"]=jumper30;
			this.ControlDictionary["ЦСА перемычка дельта"]=jumper31;
			this.ControlDictionary["ЦСА перемычка 0"]=jumper32;
			this.ControlDictionary["ЦСА перемычка Д"]=jumper33;
			this.ControlDictionary["ГКА перемычка 10"]=jumper34;
			this.ControlDictionary["ГКА перемычка 5"]=jumper35;
			this.ControlDictionary["ГКА перемычка 3"]=jumper36;
			this.ControlDictionary["ГКА перемычка 2"]=jumper37;
			this.ControlDictionary["ГКА перемычка Т"]=jumper38;
			this.ControlDictionary["ГКА перемычка Д"]=jumper39;
			this.ControlDictionary["ГКА перемычка А"]=jumper40;
			this.ControlDictionary["ГКА перемычка 0"]=jumper41;
			this.ControlDictionary["РВ3 перемычка 2"]=jumper42;
			this.ControlDictionary["РВ3 перемычка вниз"]=jumper43;
			this.ControlDictionary["РН3 перемычка"]=jumper44;
			this.ControlDictionary["ГА3 перемычка 2"]=jumper45;
			this.ControlDictionary["ГА3 перемычка вниз"]=jumper46;
			this.ControlDictionary["ЦА3-1 перемычка А"]=jumper47;
			this.ControlDictionary["ЦА3-1 перемычка С"]=jumper48;
			this.ControlDictionary["ЦА3-1 перемычка 0"]=jumper49;
			this.ControlDictionary["ЦА3-1 перемычка КТ"]=jumper50;
			this.ControlDictionary["ЦА3-2 перемычка А"]=jumper51;
			this.ControlDictionary["ЦА3-2 перемычка С"]=jumper52;
			this.ControlDictionary["ЦА3-2 перемычка 0"]=jumper53;
			this.ControlDictionary["ЦА3-2 перемычка КТ"]=jumper54;
			this.ControlDictionary["ЦА3-3 перемычка А"]=jumper55;
			this.ControlDictionary["ЦА3-3 перемычка С"]=jumper56;
			this.ControlDictionary["ЦА3-3 перемычка 0"]=jumper57;
			this.ControlDictionary["ЦА3-3 перемычка КТ"]=jumper58;
			this.ControlDictionary["ЦА3-4 перемычка А"]=jumper59;
			this.ControlDictionary["ЦА3-4 перемычка С"]=jumper60;
			this.ControlDictionary["ЦА3-4 перемычка 0"]=jumper61;
			this.ControlDictionary["ЦА3-4 перемычка КТ"]=jumper62;
			this.ControlDictionary["ЦА3-5 перемычка А"]=jumper63;
			this.ControlDictionary["ЦА3-5 перемычка С"]=jumper64;
			this.ControlDictionary["ЦА3-5 перемычка 0"]=jumper65;
			this.ControlDictionary["ЦА3-5 перемычка КТ"]=jumper66;
			this.ControlDictionary["ЦА3-6 перемычка А"]=jumper67;
			this.ControlDictionary["ЦА3-6 перемычка С"]=jumper68;
			this.ControlDictionary["ЦА3-6 перемычка 0"]=jumper69;
			this.ControlDictionary["ЦА3-6 перемычка КТ"]=jumper70;
			this.ControlDictionary["ЦА3-7 перемычка А"]=jumper71;
			this.ControlDictionary["ЦА3-7 перемычка С"]=jumper72;
			this.ControlDictionary["ЦА3-7 перемычка 0"]=jumper73;
			this.ControlDictionary["ЦА3-7 перемычка КТ"]=jumper74;
			this.ControlDictionary["ЦА3-8 перемычка А"]=jumper75;
			this.ControlDictionary["ЦА3-8 перемычка С"]=jumper76;
			this.ControlDictionary["ЦА3-8 перемычка 0"]=jumper77;
			this.ControlDictionary["ЦА3-8 перемычка КТ"]=jumper78;
			this.ControlDictionary["ЦА3-9 перемычка А"]=jumper79;
			this.ControlDictionary["ЦА3-9 перемычка С"]=jumper80;
			this.ControlDictionary["ЦА3-9 перемычка 0"]=jumper81;			
			this.ControlDictionary["ЦА3-9 перемычка КТ"]=jumper82;
			InitializeControls();
			CreateCommunication();
			// constructor code
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick)
			 
			//(ControlDictionary["ФП включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
		}
		
		private function SwitchMouseClick(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["П2 вкл зел. лампочка"] as ControlElement).GoToState(newState);
			(ControlDictionary["ГА3 зел. лампочка"] as ControlElement).GoToState(newState);
		}
	}
	
}
