package blocks  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class IO3ABlock extends ImpulsUnit {
		
		
		public function IO3ABlock() {
			super();
			this.ControlDictionary["А Включатель"]=turnSwitch1;
			this.ControlDictionary["Б Включатель"]=turnSwitch2;
			
			this.ControlDictionary["А ЦСА зел. лампочка"]=greenBulb1;
			this.ControlDictionary["А ГА3 зел. лампочка"]=greenBulb2;
			this.ControlDictionary["А ЦА3-1 зел. лампочка"]=greenBulb3;
			this.ControlDictionary["А ЦА3-2 зел. лампочка"]=greenBulb4;
			this.ControlDictionary["А ЦА3-3 зел. лампочка"]=greenBulb5;
			this.ControlDictionary["А ЦА3-4 зел. лампочка"]=greenBulb6;
			this.ControlDictionary["А ЦА3-5 зел. лампочка"]=greenBulb7;
			this.ControlDictionary["А ЦА3-6 зел. лампочка"]=greenBulb8;
			this.ControlDictionary["А ЦА3-7 зел. лампочка"]=greenBulb9;
			this.ControlDictionary["А ЦА3-8 зел. лампочка"]=greenBulb10;
			this.ControlDictionary["А ЦА3-9 зел. лампочка"]=greenBulb11;
			this.ControlDictionary["А П2 вкл зел. лампочка"]=greenBulb12;
			
			this.ControlDictionary["Б ВЧ3 зел. лампочка"]=greenBulb13;
			this.ControlDictionary["Б ТБ2-1 зел. лампочка"]=greenBulb14;
			this.ControlDictionary["Б ТБ2-2 зел. лампочка"]=greenBulb15;
			this.ControlDictionary["Б ГБ3 зел. лампочка"]=greenBulb16;
			this.ControlDictionary["Б ЦБ3-1 зел. лампочка"]=greenBulb17;
			this.ControlDictionary["Б ЦБ3-2 зел. лампочка"]=greenBulb18;
			this.ControlDictionary["Б ЦБ3-3 зел. лампочка"]=greenBulb19;
			this.ControlDictionary["Б ЦБ3-4 зел. лампочка"]=greenBulb20;
			this.ControlDictionary["Б ЦБ3-5 зел. лампочка"]=greenBulb21;
			this.ControlDictionary["Б ЦБ3-6 зел. лампочка"]=greenBulb22;
			this.ControlDictionary["Б ЦБ3-7 зел. лампочка"]=greenBulb23;
			this.ControlDictionary["Б ЦБ3-8 зел. лампочка"]=greenBulb24;
			this.ControlDictionary["Б ЦБ3-9 зел. лампочка"]=greenBulb25;
			this.ControlDictionary["Б П2 вкл зел. лампочка"]=greenBulb26;
			
			this.ControlDictionary["А ФСЧ3 кр. лампочка"]=redBulb1;
			this.ControlDictionary["А ТА2-1 кр. лампочка"]=redBulb2;
			this.ControlDictionary["А ТА2-2 кр. лампочка"]=redBulb3;
			this.ControlDictionary["А ГА3 кр. лампочка"]=redBulb4;
			this.ControlDictionary["А ЦА3-1 кр. лампочка"]=redBulb5;
			this.ControlDictionary["А ЦА3-2 кр. лампочка"]=redBulb6;
			this.ControlDictionary["А ЦА3-3 кр. лампочка"]=redBulb7;
			this.ControlDictionary["А ЦА3-4 кр. лампочка"]=redBulb8;
			this.ControlDictionary["А ЦА3-5 кр. лампочка"]=redBulb9;
			this.ControlDictionary["А ЦА3-6 кр. лампочка"]=redBulb10;
			this.ControlDictionary["А ЦА3-7 кр. лампочка"]=redBulb11;
			this.ControlDictionary["А ЦА3-8 кр. лампочка"]=redBulb12;
			this.ControlDictionary["А ЦА3-9 кр. лампочка"]=redBulb13;
			this.ControlDictionary["А П2 вкл кр. лампочка"]=redBulb14;
			
			this.ControlDictionary["Б ВЧ3 кр. лампочка"]=redBulb15;
			this.ControlDictionary["Б ТБ2-1-1 кр. лампочка"]=redBulb16;
			this.ControlDictionary["Б ТБ2-1-2 кр. лампочка"]=redBulb17;
			this.ControlDictionary["Б ТБ2-2-1 кр. лампочка"]=redBulb18;
			this.ControlDictionary["Б ТБ2-2-2 кр. лампочка"]=redBulb19;
			this.ControlDictionary["Б ГБ3 кр. лампочка"]=redBulb20;
			this.ControlDictionary["Б ЦБ3-1-1 кр. лампочка"]=redBulb21;
			this.ControlDictionary["Б ЦБ3-1-2 кр. лампочка"]=redBulb22;
			this.ControlDictionary["Б ЦБ3-2-1 кр. лампочка"]=redBulb23;
			this.ControlDictionary["Б ЦБ3-2-2 кр. лампочка"]=redBulb24;
			this.ControlDictionary["Б ЦБ3-3-1 кр. лампочка"]=redBulb25;
			this.ControlDictionary["Б ЦБ3-3-2 кр. лампочка"]=redBulb26;
			this.ControlDictionary["Б ЦБ3-4-1 кр. лампочка"]=redBulb27;
			this.ControlDictionary["Б ЦБ3-4-2 кр. лампочка"]=redBulb28;
			this.ControlDictionary["Б ЦБ3-5-1 кр. лампочка"]=redBulb29;
			this.ControlDictionary["Б ЦБ3-5-2 кр. лампочка"]=redBulb30;
			this.ControlDictionary["Б ЦБ3-6-1 кр. лампочка"]=redBulb31;
			this.ControlDictionary["Б ЦБ3-6-2 кр. лампочка"]=redBulb32;
			this.ControlDictionary["Б ЦБ3-7-1 кр. лампочка"]=redBulb33;
			this.ControlDictionary["Б ЦБ3-7-2 кр. лампочка"]=redBulb34;
			this.ControlDictionary["Б ЦБ3-8-1 кр. лампочка"]=redBulb35;
			this.ControlDictionary["Б ЦБ3-8-2 кр. лампочка"]=redBulb36;
			this.ControlDictionary["Б ЦБ3-9-1 кр. лампочка"]=redBulb37;
			this.ControlDictionary["Б ЦБ3-9-2 кр. лампочка"]=redBulb38;
			this.ControlDictionary["Б П2 вкл кр. лампочка"]=redBulb39;
			
			this.ControlDictionary["А Неименованая Правая 1"]=jumper1;
			this.ControlDictionary["А Неименованая Правая 2"]=jumper2;
			this.ControlDictionary["А Неименованая Правая 3"]=jumper3;
			this.ControlDictionary["А Неименованая Правая 4"]=jumper4;
			this.ControlDictionary["А Неименованая Правая 5"]=jumper5;
			this.ControlDictionary["А Неименованая Правая 6"]=jumper6;
			this.ControlDictionary["А Неименованая Правая 7"]=jumper7;
			this.ControlDictionary["А Неименованая Правая 8"]=jumper8;
			this.ControlDictionary["А ФСЧ3 пермычка"]=jumper9;
			this.ControlDictionary["А ТА2-1 пермычка 1"]=jumper10;
			this.ControlDictionary["А ТА2-1 пермычка 0"]=jumper11;
			this.ControlDictionary["А ТА2-1 пермычка КТ"]=jumper12;
			this.ControlDictionary["А ТА2-1 пермычка 2"]=jumper13;
			this.ControlDictionary["А ТА2-1 пермычка вниз"]=jumper14;
			this.ControlDictionary["А ТА2-2 пермычка 1"]=jumper15;
			this.ControlDictionary["А ТА2-2 пермычка 0"]=jumper16;
			this.ControlDictionary["А ТА2-2 пермычка КТ"]=jumper17;
			this.ControlDictionary["А ТА2-2 пермычка 2"]=jumper18;
			this.ControlDictionary["А ТА2-2 пермычка вниз"]=jumper19;
			this.ControlDictionary["А СКА2 перемычка 1-К"]=jumper20;
			this.ControlDictionary["А СКА2 перемычка 0-К"]=jumper21;
			this.ControlDictionary["А СКА2 перемычка Д-К"]=jumper22;
			this.ControlDictionary["А СКА2 перемычка 1-С"]=jumper23;
			this.ControlDictionary["А СКА2 перемычка 0-С"]=jumper24;
			this.ControlDictionary["А СКА2 перемычка Д-С"]=jumper25;
			this.ControlDictionary["А СКА2 перемычка 2"]=jumper26;
			this.ControlDictionary["А СКА2 перемычка вниз"]=jumper27;
			this.ControlDictionary["А ЦСА перемычка 7"]=jumper28;
			this.ControlDictionary["А ЦСА перемычка дельта 3"]=jumper29;
			this.ControlDictionary["А ЦСА перемычка 3"]=jumper30;
			this.ControlDictionary["А ЦСА перемычка дельта"]=jumper31;
			this.ControlDictionary["А ЦСА перемычка 0"]=jumper32;
			this.ControlDictionary["А ЦСА перемычка Д"]=jumper33;
			this.ControlDictionary["А ГКА перемычка 10"]=jumper34;
			this.ControlDictionary["А ГКА перемычка 5"]=jumper35;
			this.ControlDictionary["А ГКА перемычка 3"]=jumper36;
			this.ControlDictionary["А ГКА перемычка 2"]=jumper37;
			this.ControlDictionary["А ГКА перемычка Т"]=jumper38;
			this.ControlDictionary["А ГКА перемычка Д"]=jumper39;
			this.ControlDictionary["А ГКА перемычка А"]=jumper40;
			this.ControlDictionary["А ГКА перемычка 0"]=jumper41;
			this.ControlDictionary["А РВ3 перемычка 2"]=jumper42;
			this.ControlDictionary["А РВ3 перемычка вниз"]=jumper43;
			this.ControlDictionary["А РН3 перемычка"]=jumper44;
			this.ControlDictionary["А ГА3 перемычка 2"]=jumper45;
			this.ControlDictionary["А ГА3 перемычка вниз"]=jumper46;
			this.ControlDictionary["А ЦА3-1 перемычка А"]=jumper47;
			this.ControlDictionary["А ЦА3-1 перемычка С"]=jumper48;
			this.ControlDictionary["А ЦА3-1 перемычка 0"]=jumper49;
			this.ControlDictionary["А ЦА3-1 перемычка КТ"]=jumper50;
			this.ControlDictionary["А ЦА3-2 перемычка А"]=jumper51;
			this.ControlDictionary["А ЦА3-2 перемычка С"]=jumper52;
			this.ControlDictionary["А ЦА3-2 перемычка 0"]=jumper53;
			this.ControlDictionary["А ЦА3-2 перемычка КТ"]=jumper54;
			this.ControlDictionary["А ЦА3-3 перемычка А"]=jumper55;
			this.ControlDictionary["А ЦА3-3 перемычка С"]=jumper56;
			this.ControlDictionary["А ЦА3-3 перемычка 0"]=jumper57;
			this.ControlDictionary["А ЦА3-3 перемычка КТ"]=jumper58;
			this.ControlDictionary["А ЦА3-4 перемычка А"]=jumper59;
			this.ControlDictionary["А ЦА3-4 перемычка С"]=jumper60;
			this.ControlDictionary["А ЦА3-4 перемычка 0"]=jumper61;
			this.ControlDictionary["А ЦА3-4 перемычка КТ"]=jumper62;
			this.ControlDictionary["А ЦА3-5 перемычка А"]=jumper63;
			this.ControlDictionary["А ЦА3-5 перемычка С"]=jumper64;
			this.ControlDictionary["А ЦА3-5 перемычка 0"]=jumper65;
			this.ControlDictionary["А ЦА3-5 перемычка КТ"]=jumper66;
			this.ControlDictionary["А ЦА3-6 перемычка А"]=jumper67;
			this.ControlDictionary["А ЦА3-6 перемычка С"]=jumper68;
			this.ControlDictionary["А ЦА3-6 перемычка 0"]=jumper69;
			this.ControlDictionary["А ЦА3-6 перемычка КТ"]=jumper70;
			this.ControlDictionary["А ЦА3-7 перемычка А"]=jumper71;
			this.ControlDictionary["А ЦА3-7 перемычка С"]=jumper72;
			this.ControlDictionary["А ЦА3-7 перемычка 0"]=jumper73;
			this.ControlDictionary["А ЦА3-7 перемычка КТ"]=jumper74;
			this.ControlDictionary["А ЦА3-8 перемычка А"]=jumper75;
			this.ControlDictionary["А ЦА3-8 перемычка С"]=jumper76;
			this.ControlDictionary["А ЦА3-8 перемычка 0"]=jumper77;
			this.ControlDictionary["А ЦА3-8 перемычка КТ"]=jumper78;
			this.ControlDictionary["А ЦА3-9 перемычка А"]=jumper79;
			this.ControlDictionary["А ЦА3-9 перемычка С"]=jumper80;
			this.ControlDictionary["А ЦА3-9 перемычка 0"]=jumper81;			
			this.ControlDictionary["А ЦА3-9 перемычка КТ"]=jumper82;
			
			this.ControlDictionary["Б ВЧ3 перемычка Б"]=jumper101;
			this.ControlDictionary["Б ВЧ3 перемычка У"]=jumper102;
			this.ControlDictionary["Б ВЧ3 перемычка ШГ"]=jumper103;
			this.ControlDictionary["Б ВЧ3 перемычка ВН"]=jumper104;
			this.ControlDictionary["Б ТБ2-1 перемычка ВН"]=jumper105;
			this.ControlDictionary["Б ТБ2-2 перемычка ВН"]=jumper106;
			this.ControlDictionary["Б ГКБ перемычка 10"]=jumper107;
			this.ControlDictionary["Б ГКБ перемычка 5"]=jumper108;
			this.ControlDictionary["Б ГКБ перемычка 3"]=jumper109;
			this.ControlDictionary["Б ГКБ перемычка 2"]=jumper110;
			this.ControlDictionary["Б ГКБ перемычка Т"]=jumper111;
			this.ControlDictionary["Б ГКБ перемычка Д"]=jumper112;
			this.ControlDictionary["Б ГКБ перемычка 7"]=jumper113;
			this.ControlDictionary["Б ГКБ перемычка дельта 3"]=jumper114;
			this.ControlDictionary["Б РВ3 перемычка 2"]=jumper115;
			this.ControlDictionary["Б РВ3 перемычка вн"]=jumper116;
			this.ControlDictionary["Б РН3 перемычка вн"]=jumper117;
			this.ControlDictionary["Б ГБ3 перемычка 2"]=jumper118;
			this.ControlDictionary["Б ГБ3 перемычка вн"]=jumper119;
			this.ControlDictionary["Б КЗ-1 перемычка 1"]=jumper120;
			this.ControlDictionary["Б КЗ-1 перемычка 2"]=jumper121;
			this.ControlDictionary["Б КЗ-1 перемычка 3"]=jumper122;
			this.ControlDictionary["Б КЗ-1 перемычка 4"]=jumper123;
			this.ControlDictionary["Б КЗ-1 перемычка 5"]=jumper124;
			this.ControlDictionary["Б КЗ-1 перемычка 6"]=jumper125;
			this.ControlDictionary["Б КЗ-1 перемычка 7"]=jumper126;
			this.ControlDictionary["Б КЗ-1 перемычка 8"]=jumper127;
			this.ControlDictionary["Б КЗ-1 перемычка 9"]=jumper128;
			this.ControlDictionary["Б ЦБ3-1 перемычка А"]=jumper129;
			this.ControlDictionary["Б ЦБ3-1 перемычка С"]=jumper130;
			this.ControlDictionary["Б ЦБ3-1 перемычка ВН"]=jumper131;
			this.ControlDictionary["Б КЗ-2 перемычка 1"]=jumper132;
			this.ControlDictionary["Б КЗ-2 перемычка 2"]=jumper133;
			this.ControlDictionary["Б КЗ-2 перемычка 3"]=jumper134;
			this.ControlDictionary["Б КЗ-2 перемычка 4"]=jumper135;
			this.ControlDictionary["Б КЗ-2 перемычка 5"]=jumper136;
			this.ControlDictionary["Б КЗ-2 перемычка 6"]=jumper137;
			this.ControlDictionary["Б КЗ-2 перемычка 7"]=jumper138;
			this.ControlDictionary["Б КЗ-2 перемычка 8"]=jumper139;
			this.ControlDictionary["Б КЗ-2 перемычка 9"]=jumper140;
			this.ControlDictionary["Б ЦБ3-2 перемычка А"]=jumper141;
			this.ControlDictionary["Б ЦБ3-2 перемычка С"]=jumper142;
			this.ControlDictionary["Б ЦБ3-2 перемычка ВН"]=jumper143;
			this.ControlDictionary["Б КЗ-3 перемычка 1"]=jumper144;
			this.ControlDictionary["Б КЗ-3 перемычка 2"]=jumper145;
			this.ControlDictionary["Б КЗ-3 перемычка 3"]=jumper146;
			this.ControlDictionary["Б КЗ-3 перемычка 4"]=jumper147;
			this.ControlDictionary["Б КЗ-3 перемычка 5"]=jumper148;
			this.ControlDictionary["Б КЗ-3 перемычка 6"]=jumper149;
			this.ControlDictionary["Б КЗ-3 перемычка 7"]=jumper150;
			this.ControlDictionary["Б КЗ-3 перемычка 8"]=jumper151;
			this.ControlDictionary["Б КЗ-3 перемычка 9"]=jumper152;
			this.ControlDictionary["Б ЦБ3-3 перемычка А"]=jumper153;
			this.ControlDictionary["Б ЦБ3-3 перемычка С"]=jumper154;
			this.ControlDictionary["Б ЦБ3-3 перемычка ВН"]=jumper155;
			this.ControlDictionary["Б ЦБ3-4 перемычка А"]=jumper156;
			this.ControlDictionary["Б ЦБ3-4 перемычка С"]=jumper157;
			this.ControlDictionary["Б ЦБ3-4 перемычка ВН"]=jumper158;
			this.ControlDictionary["Б ЦБ3-5 перемычка А"]=jumper159;
			this.ControlDictionary["Б ЦБ3-5 перемычка С"]=jumper160;
			this.ControlDictionary["Б ЦБ3-5 перемычка ВН"]=jumper161;
			this.ControlDictionary["Б ЦБ3-6 перемычка А"]=jumper162;
			this.ControlDictionary["Б ЦБ3-6 перемычка С"]=jumper163;
			this.ControlDictionary["Б ЦБ3-6 перемычка ВН"]=jumper164;
			this.ControlDictionary["Б ЦБ3-7 перемычка А"]=jumper165;
			this.ControlDictionary["Б ЦБ3-7 перемычка С"]=jumper166;
			this.ControlDictionary["Б ЦБ3-7 перемычка ВН"]=jumper167;
			this.ControlDictionary["Б ЦБ3-8 перемычка А"]=jumper168;
			this.ControlDictionary["Б ЦБ3-8 перемычка С"]=jumper169;
			this.ControlDictionary["Б ЦБ3-8 перемычка ВН"]=jumper170;
			this.ControlDictionary["Б ЦБ3-9 перемычка А"]=jumper171;
			this.ControlDictionary["Б ЦБ3-9 перемычка С"]=jumper172;
			this.ControlDictionary["Б ЦБ3-9 перемычка ВН"]=jumper173;
			this.ControlDictionary["Б П2 перемычка 6.3"]=jumper174;
			this.ControlDictionary["Б П2 перемычка 27"]=jumper175;
			this.ControlDictionary["Б П2 перемычка 24"]=jumper176;
			this.ControlDictionary["Б П2 перемычка СРТ"]=jumper177;
			
			InitializeControls();
			CreateCommunication();
			// constructor code
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
			this.AddToTraining(ControlDictionary["А ТА2-1 пермычка 1"],"Установите переключатель 1-0 в положение 1",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А СКА2 перемычка 1-К"],"Установите переключатель С в положение 1",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А СКА2 перемычка 1-С"],"Установите переключатель К в положение 1",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦСА перемычка 7"],"Установите переключатель РЕЖИМ 10 КАН в положение 7",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ГКА перемычка 10"],"Установите переключатель ГР СК в положение 10х48",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ГКА перемычка А"],"Установите переключатель А-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-1 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-2 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-3 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-4 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-5 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-6 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-7 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-8 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А ЦА3-9 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ВЧ3 перемычка Б"],"Установите переключатель Б-У в положение Б",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ГКБ перемычка 10"],"Установите переключатель ГР СК в положение 10х48",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ГКБ перемычка 7"],"Установите переключатель РЕЖИМ 10 КАН в положение 7",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б КЗ-1 перемычка 1"],"Установите переключатель I комплекта блока КЗ в положение 1",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-1 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б КЗ-2 перемычка 2"],"Установите переключатель II комплекта блока КЗ в положение 2",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-2 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б КЗ-3 перемычка 3"],"Установите переключатель III комплекта блока КЗ в положение 3",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-3 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-4 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-5 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-6 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-7 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-8 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б ЦБ3-9 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А Включатель"],"Установите Тумблер М-Д в положение М",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Б Включатель"],"Установите Тумблер М-Д в положение М",ControlElement.S_B_CHOSEN);
		}
		private function InitializeWorkingSequence()
		{
			if ((ControlDictionary["А ГКА перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
			{
				if  (ModeInfo.modeInfo.Speed == ModeInfo.S_480)
					this.AddToTraining(ControlDictionary["А ГКА перемычка 10"],"Установите переключатель ГР СК в положение 10х48",ControlElement.S_B_CHOSEN);
				this.AddToTraining(ControlDictionary["А ГКА перемычка А"],"Установите переключатель А-О в положение А",ControlElement.S_B_CHOSEN);
			}
			if ((ControlDictionary["А СКА2 перемычка 1-К"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А СКА2 перемычка 1-К"],"Установите переключатель К в положение 1",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А СКА2 перемычка 1-С"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А СКА2 перемычка 1-С"],"Установите переключатель С в положение 1",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А СКА2 перемычка Д-К"],"Установите переключатель К в положение Д",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["А СКА2 перемычка Д-С"],"Установите переключатель С в положение Д",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ТА2-1 пермычка 1"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ТА2-1 пермычка 1"],"Установите переключатель 1-0 в положение 1",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ТА2-2 пермычка 1"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ТА2-2 пермычка 1"],"Установите переключатель 1-0 в положение 1",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-1 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-1 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-2 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-2 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-3 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-3 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-4 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-4 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-5 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-5 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-6 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-6 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-7 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-7 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-8 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-8 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-9 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦА3-9 перемычка А"],"Установите переключатель А-С-О в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦСА перемычка дельта 3"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["А ЦСА перемычка дельта 3"],"Установите переключатель РЕЖИМ 10 КАН в положение Δ/3",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ВЧ3 перемычка Б"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ВЧ3 перемычка Б"],"Установите переключатель Б-У в положение Б",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ГКБ перемычка 10"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ГКБ перемычка 10"],"Установите переключатель ГР СК в положение 10х48",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-1 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-1 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-2 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-2 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-3 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-3 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-4 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-4 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-5 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-5 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-6 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-6 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-7 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-7 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-8 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-8 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-9 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ЦБ3-9 перемычка А"],"Установите переключатель А-С в положение А",ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ГКБ перемычка дельта 3"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				this.AddToTraining(ControlDictionary["Б ГКБ перемычка дельта 3"],"Установите переключатель РЕЖИМ 10 КАН в положение Δ/3",ControlElement.S_B_CHOSEN);
		}		
		
		private function CreateCommunication()
		{
			(ControlDictionary["А Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick1);
			(ControlDictionary["Б Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick2)
			trace((ControlDictionary["А ГКА перемычка А"] as ControlElement));
			(ControlDictionary["А ГКА перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick10);
			(ControlDictionary["А ЦА3-1 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick1);
			(ControlDictionary["А ЦА3-2 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick2);
			(ControlDictionary["А ЦА3-3 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick3);
			(ControlDictionary["А ЦА3-4 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick4);
			(ControlDictionary["А ЦА3-5 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick5);
			(ControlDictionary["А ЦА3-6 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick6);
			(ControlDictionary["А ЦА3-7 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick7);
			(ControlDictionary["А ЦА3-8 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick8);
			(ControlDictionary["А ЦА3-9 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick9);
			(ControlDictionary["А ЦСА перемычка дельта 3"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick11);
			(ControlDictionary["Б ГКБ перемычка 10"] as ControlElement).addEventListener(MouseEvent.CLICK,JumperClick12);
		}
		
		private function SwitchMouseClick1(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["А П2 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["А ГА3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function SwitchMouseClick2(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Б Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["Б П2 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["Б ГБ3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick10(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ГКА перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ГА3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick1(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-1 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-1 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick2(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-2 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-2 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick3(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-3 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick4(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-4 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-4 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick5(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-5 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-5 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick6(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-6 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-6 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick7(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-7 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-7 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick8(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-8 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-8 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick9(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦА3-9 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-9 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick11(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["А ЦСА перемычка дельта 3"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦСА зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick12(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Б ГКБ перемычка 10"] as ControlElement).CurrentState;
			(ControlDictionary["Б ВЧ3 зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["Б ГБ3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}
}
