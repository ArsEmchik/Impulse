package blocks {
	
	import flash.display.MovieClip;
	
	
	public class IO4Block extends ImpulsUnit {
		
		
		public function IO4Block() {
			super();
			this.ControlDictionary["ЦА4_1 кр. лампа"]=redBulb1;
			this.ControlDictionary["ЦА4_1 зел. лампа"]=greenBulb1;	
			this.ControlDictionary["ЦА4_1 перемычка 1"]=Jumper1;			
			this.ControlDictionary["ЦА4_1 перемычка 0"]=Jumper2;			
			this.ControlDictionary["ЦА4_1 перемычка Б"]=Jumper3;			
			this.ControlDictionary["ЦА4_1 перемычка У"]=Jumper4;			
			this.ControlDictionary["ЦА4_1 перемычка КТ"]=Jumper5;	
			
			this.ControlDictionary["ЦА4_2 кр. лампа"]=redBulb2;
			this.ControlDictionary["ЦА4_2 зел. лампа"]=greenBulb2;	
			this.ControlDictionary["ЦА4_2 перемычка 1"]=Jumper6;			
			this.ControlDictionary["ЦА4_2 перемычка 0"]=Jumper7;			
			this.ControlDictionary["ЦА4_2 перемычка Б"]=Jumper8;			
			this.ControlDictionary["ЦА4_2 перемычка У"]=Jumper9;			
			this.ControlDictionary["ЦА4_2 перемычка КТ"]=Jumper10;	

			this.ControlDictionary["ЦА4_3 кр. лампа"]=redBulb3;
			this.ControlDictionary["ЦА4_3 зел. лампа"]=greenBulb3;	
			this.ControlDictionary["ЦА4_3 перемычка 1"]=Jumper11;			
			this.ControlDictionary["ЦА4_3 перемычка 0"]=Jumper12;			
			this.ControlDictionary["ЦА4_3 перемычка Б"]=Jumper13;			
			this.ControlDictionary["ЦА4_3 перемычка У"]=Jumper14;			
			this.ControlDictionary["ЦА4_3 перемычка КТ"]=Jumper15;	
			
			this.ControlDictionary["ЦА4_4 кр. лампа"]=redBulb4;
			this.ControlDictionary["ЦА4_4 зел. лампа"]=greenBulb4;	
			this.ControlDictionary["ЦА4_4 перемычка 1"]=Jumper16;			
			this.ControlDictionary["ЦА4_4 перемычка 0"]=Jumper17;			
			this.ControlDictionary["ЦА4_4 перемычка Б"]=Jumper18;			
			this.ControlDictionary["ЦА4_4 перемычка У"]=Jumper19;			
			this.ControlDictionary["ЦА4_4 перемычка КТ"]=Jumper20;	
			
			this.ControlDictionary["Крайняя перемычка 1"]=Jumper21;
			this.ControlDictionary["Крайняя перемычка 2"]=Jumper22;	
			this.ControlDictionary["Крайняя перемычка 3"]=Jumper23;			
			this.ControlDictionary["Крайняя перемычка 4"]=Jumper24;			
			this.ControlDictionary["Крайняя перемычка 5"]=Jumper25;			
			this.ControlDictionary["Крайняя перемычка 6"]=Jumper26;			
			this.ControlDictionary["Крайняя перемычка 7"]=Jumper27;	
			this.ControlDictionary["Крайняя перемычка 8"]=Jumper28;
			
			this.ControlDictionary["ФСЧ4 кр. лампа"]=redBulb5;
			this.ControlDictionary["ФСЧ4 перемычка А"]=Jumper29;	
			this.ControlDictionary["ФСЧ4 перемычка 0"]=Jumper30;			
			this.ControlDictionary["ФСЧ4 перемычка 1"]=Jumper31;	
			
			this.ControlDictionary["Р4_1 перемычка 2-3"]=Jumper32;			
			this.ControlDictionary["Р4_1 перемычка 1"]=Jumper33;			
			
			this.ControlDictionary["ГА4 кр. лампа"]=redBulb6;
			this.ControlDictionary["ГА4 зел. лампа"]=greenBulb5;	
			this.ControlDictionary["ГА4 перемычка 1"]=Jumper34;			
			this.ControlDictionary["ГА4 перемычка 0"]=Jumper35;			
			this.ControlDictionary["ГА4 перемычка Д"]=Jumper36;			
			this.ControlDictionary["ГА4 перемычка 1 снизу"]=Jumper37;
			
			this.ControlDictionary["ГБ4 зел. лампа СИГНАЛ"]=greenBulb6;	
			this.ControlDictionary["ГБ4 зел. лампа СИНХРОНИЗАЦИЯ"]=greenBulb7;
			this.ControlDictionary["ГБ4 кр. лампа"]=redBulb7;			
			this.ControlDictionary["ГБ4 перемычка ШГ"]=Jumper38;			
			this.ControlDictionary["ГБ4 перемычка 1"]=Jumper39;					
			
			this.ControlDictionary["Р4_2 перемычка 2-3"]=Jumper40;			
			this.ControlDictionary["Р4_2 перемычка 1"]=Jumper41;
			
			this.ControlDictionary["ВЧ4 перемычка 1"]=Jumper42;
			
			this.ControlDictionary["ЦБ4_1 кр. лампа"]=redBulb8;	
			this.ControlDictionary["ЦБ4_1 зел. лампа"]=greenBulb8;
			this.ControlDictionary["ЦБ4_1 кр. лампа КТ"]=redBulb9;			
			this.ControlDictionary["ЦБ4_1 перемычка ШГ"]=Jumper43;
			
			this.ControlDictionary["ЦБ4_2 кр. лампа"]=redBulb10;	
			this.ControlDictionary["ЦБ4_2 зел. лампа"]=greenBulb9;
			this.ControlDictionary["ЦБ4_2 кр. лампа КТ"]=redBulb11;			
			this.ControlDictionary["ЦБ4_2 перемычка ШГ"]=Jumper44;		
			
			this.ControlDictionary["ЦБ4_3 кр. лампа"]=redBulb12;	
			this.ControlDictionary["ЦБ4_3 зел. лампа"]=greenBulb10;
			this.ControlDictionary["ЦБ4_3 кр. лампа КТ"]=redBulb13;			
			this.ControlDictionary["ЦБ4_3 перемычка ШГ"]=Jumper45;					

			this.ControlDictionary["ЦБ4_4 кр. лампа"]=redBulb14;	
			this.ControlDictionary["ЦБ4_4 зел. лампа"]=greenBulb11;
			this.ControlDictionary["ЦБ4_4 кр. лампа КТ"]=redBulb15;			
			this.ControlDictionary["ЦБ4_4 перемычка ШГ"]=Jumper46;		
			
			this.ControlDictionary["П2 кр. лампа"]=redBulb16;
			this.ControlDictionary["П2 зел. лампа"]=greenBulb12;	
			this.ControlDictionary["П2 перемычка +- 6.3"]=Jumper47;			
			this.ControlDictionary["П2 перемычка +27 +5"]=Jumper48;			
			this.ControlDictionary["П2 перемычка +- 24"]=Jumper49;			
			this.ControlDictionary["П2 перемычка СР.Т"]=Jumper50;	
			this.ControlDictionary["П2 включатель"]=turnOnOff;		
			InitializeControls();
			// constructor code
		}
	}
	
}
