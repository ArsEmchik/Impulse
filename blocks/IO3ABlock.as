package blocks
{
	import controls.Bulb;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.utils.Dictionary;
	
	public class IO3ABlock extends ImpulsUnit
	{
		private var dict:Dictionary = new Dictionary();
		
		public var jumper1:Jumper;
		public var jumper2:Jumper;
		public var jumper3:Jumper;
		public var jumper4:Jumper;
		public var jumper5:Jumper;
		public var jumper6:Jumper;
		public var jumper7:Jumper;
		public var jumper8:Jumper;
		public var jumper9:Jumper;
		public var jumper10:Jumper;
		public var jumper11:Jumper;
		public var jumper12:Jumper;
		public var jumper13:Jumper;
		public var jumper14:Jumper;
		public var jumper15:Jumper;
		public var jumper16:Jumper;
		public var jumper17:Jumper;
		public var jumper18:Jumper;
		public var jumper19:Jumper;
		public var jumper20:Jumper;
		public var jumper21:Jumper;
		public var jumper22:Jumper;
		public var jumper23:Jumper;
		public var jumper24:Jumper;
		public var jumper25:Jumper;
		public var jumper26:Jumper;
		public var jumper27:Jumper;
		public var jumper28:Jumper;
		public var jumper29:Jumper;
		public var jumper30:Jumper;
		public var jumper31:Jumper;
		public var jumper32:Jumper;
		public var jumper33:Jumper;
		public var jumper34:Jumper;
		public var jumper35:Jumper;
		public var jumper36:Jumper;
		public var jumper37:Jumper;
		public var jumper38:Jumper;
		public var jumper39:Jumper;
		public var jumper40:Jumper;
		public var jumper41:Jumper;
		public var jumper42:Jumper;
		public var jumper43:Jumper;
		public var jumper44:Jumper;
		public var jumper45:Jumper;
		public var jumper46:Jumper;
		public var jumper47:Jumper;
		public var jumper48:Jumper;
		public var jumper49:Jumper;
		public var jumper50:Jumper;
		public var jumper51:Jumper;
		public var jumper52:Jumper;
		public var jumper53:Jumper;
		public var jumper54:Jumper;
		public var jumper55:Jumper;
		public var jumper56:Jumper;
		public var jumper57:Jumper;
		public var jumper58:Jumper;
		public var jumper59:Jumper;
		public var jumper60:Jumper;
		public var jumper61:Jumper;
		public var jumper62:Jumper;
		public var jumper63:Jumper;
		public var jumper64:Jumper;
		public var jumper65:Jumper;
		public var jumper66:Jumper;
		public var jumper67:Jumper;
		public var jumper68:Jumper;
		public var jumper69:Jumper;
		public var jumper70:Jumper;
		public var jumper71:Jumper;
		public var jumper72:Jumper;
		public var jumper73:Jumper;
		public var jumper74:Jumper;
		public var jumper75:Jumper;
		public var jumper76:Jumper;
		public var jumper77:Jumper;
		public var jumper78:Jumper;
		public var jumper79:Jumper;
		public var jumper80:Jumper;
		public var jumper81:Jumper;
		public var jumper82:Jumper;
		public var jumper83:Jumper;
		public var jumper84:Jumper;
		public var jumper85:Jumper;
		public var jumper86:Jumper;
		public var jumper87:Jumper;
		public var jumper88:Jumper;
		public var jumper89:Jumper;
		public var jumper90:Jumper;
		public var jumper91:Jumper;
		public var jumper92:Jumper;
		public var jumper93:Jumper;
		public var jumper94:Jumper;
		public var jumper95:Jumper;
		public var jumper96:Jumper;
		public var jumper97:Jumper;
		public var jumper98:Jumper;
		public var jumper99:Jumper;
		public var jumper100:Jumper;
		public var jumper101:Jumper;
		public var jumper102:Jumper;
		public var jumper103:Jumper;
		public var jumper104:Jumper;
		public var jumper105:Jumper;
		public var jumper106:Jumper;
		public var jumper107:Jumper;
		public var jumper108:Jumper;
		public var jumper109:Jumper;
		public var jumper110:Jumper;
		public var jumper111:Jumper;
		public var jumper112:Jumper;
		public var jumper113:Jumper;
		public var jumper114:Jumper;
		public var jumper115:Jumper;
		public var jumper116:Jumper;
		public var jumper117:Jumper;
		public var jumper118:Jumper;
		public var jumper119:Jumper;
		public var jumper120:Jumper;
		public var jumper121:Jumper;
		public var jumper122:Jumper;
		public var jumper123:Jumper;
		public var jumper124:Jumper;
		public var jumper125:Jumper;
		public var jumper126:Jumper;
		public var jumper127:Jumper;
		public var jumper128:Jumper;
		public var jumper129:Jumper;
		public var jumper130:Jumper;
		public var jumper131:Jumper;
		public var jumper132:Jumper;
		public var jumper133:Jumper;
		public var jumper134:Jumper;
		public var jumper135:Jumper;
		public var jumper136:Jumper;
		public var jumper137:Jumper;
		public var jumper138:Jumper;
		public var jumper139:Jumper;
		public var jumper140:Jumper;
		public var jumper141:Jumper;
		public var jumper142:Jumper;
		public var jumper143:Jumper;
		public var jumper144:Jumper;
		public var jumper145:Jumper;
		public var jumper146:Jumper;
		public var jumper147:Jumper;
		public var jumper148:Jumper;
		public var jumper149:Jumper;
		public var jumper150:Jumper;
		public var jumper151:Jumper;
		public var jumper152:Jumper;
		public var jumper153:Jumper;
		public var jumper154:Jumper;
		public var jumper155:Jumper;
		public var jumper156:Jumper;
		public var jumper157:Jumper;
		public var jumper158:Jumper;
		public var jumper159:Jumper;
		public var jumper160:Jumper;
		public var jumper161:Jumper;
		public var jumper162:Jumper;
		public var jumper163:Jumper;
		public var jumper164:Jumper;
		public var jumper165:Jumper;
		public var jumper166:Jumper;
		public var jumper167:Jumper;
		public var jumper168:Jumper;
		public var jumper169:Jumper;
		public var jumper170:Jumper;
		public var jumper171:Jumper;
		public var jumper172:Jumper;
		public var jumper173:Jumper;
		public var jumper174:Jumper;
		public var jumper175:Jumper;
		public var jumper176:Jumper;
		public var jumper177:Jumper;
		
		public var greenBulb1:GreenBulb;
		public var greenBulb2:GreenBulb;
		public var greenBulb3:GreenBulb;
		public var greenBulb4:GreenBulb;
		public var greenBulb5:GreenBulb;
		public var greenBulb6:GreenBulb;
		public var greenBulb7:GreenBulb;
		public var greenBulb8:GreenBulb;
		public var greenBulb9:GreenBulb;
		public var greenBulb10:GreenBulb;
		public var greenBulb11:GreenBulb;
		public var greenBulb12:GreenBulb;
		public var greenBulb13:GreenBulb;
		public var greenBulb14:GreenBulb;
		public var greenBulb15:GreenBulb;
		public var greenBulb16:GreenBulb;
		public var greenBulb17:GreenBulb;
		public var greenBulb18:GreenBulb;
		public var greenBulb19:GreenBulb;
		public var greenBulb20:GreenBulb;
		public var greenBulb21:GreenBulb;
		public var greenBulb22:GreenBulb;
		public var greenBulb23:GreenBulb;
		public var greenBulb24:GreenBulb;
		public var greenBulb25:GreenBulb;
		public var greenBulb26:GreenBulb;
		
		public var redBulb1:RedBulb;
		public var redBulb2:RedBulb;
		public var redBulb3:RedBulb;
		public var redBulb4:RedBulb;
		public var redBulb5:RedBulb;
		public var redBulb6:RedBulb;
		public var redBulb7:RedBulb;
		public var redBulb8:RedBulb;
		public var redBulb9:RedBulb;
		public var redBulb10:RedBulb;
		public var redBulb11:RedBulb;
		public var redBulb12:RedBulb;
		public var redBulb13:RedBulb;
		public var redBulb14:RedBulb;
		public var redBulb15:RedBulb;
		public var redBulb16:RedBulb;
		public var redBulb17:RedBulb;
		public var redBulb18:RedBulb;
		public var redBulb19:RedBulb;
		public var redBulb20:RedBulb;
		public var redBulb21:RedBulb;
		public var redBulb22:RedBulb;
		public var redBulb23:RedBulb;
		public var redBulb24:RedBulb;
		public var redBulb25:RedBulb;
		public var redBulb26:RedBulb;
		public var redBulb27:RedBulb;
		public var redBulb28:RedBulb;
		public var redBulb29:RedBulb;
		public var redBulb30:RedBulb;
		public var redBulb31:RedBulb;
		public var redBulb32:RedBulb;
		public var redBulb33:RedBulb;
		public var redBulb34:RedBulb;
		public var redBulb35:RedBulb;
		public var redBulb36:RedBulb;
		public var redBulb37:RedBulb;
		public var redBulb38:RedBulb;
		public var redBulb39:RedBulb;
		
		public var turnSwitch1:TurnOnOffMetal;
		public var turnSwitch2:TurnOnOffMetal;
		
		public function IO3ABlock()
		{
			super();
			ControlDictionary["А Включатель"] = turnSwitch1;
			ControlDictionary["Б Включатель"] = turnSwitch2;
			
			ControlDictionary["А ЦСА зел. лампочка"] = greenBulb1;
			ControlDictionary["А ГА3 зел. лампочка"] = greenBulb2;
			ControlDictionary["А ЦА3-1 зел. лампочка"] = greenBulb3;
			ControlDictionary["А ЦА3-2 зел. лампочка"] = greenBulb4;
			ControlDictionary["А ЦА3-3 зел. лампочка"] = greenBulb5;
			ControlDictionary["А ЦА3-4 зел. лампочка"] = greenBulb6;
			ControlDictionary["А ЦА3-5 зел. лампочка"] = greenBulb7;
			ControlDictionary["А ЦА3-6 зел. лампочка"] = greenBulb8;
			ControlDictionary["А ЦА3-7 зел. лампочка"] = greenBulb9;
			ControlDictionary["А ЦА3-8 зел. лампочка"] = greenBulb10;
			ControlDictionary["А ЦА3-9 зел. лампочка"] = greenBulb11;
			ControlDictionary["А П2 вкл зел. лампочка"] = greenBulb12;
			
			ControlDictionary["Б ВЧ3 зел. лампочка"] = greenBulb13;
			ControlDictionary["Б ТБ2-1 зел. лампочка"] = greenBulb14;
			ControlDictionary["Б ТБ2-2 зел. лампочка"] = greenBulb15;
			ControlDictionary["Б ГБ3 зел. лампочка"] = greenBulb16;
			ControlDictionary["Б ЦБ3-1 зел. лампочка"] = greenBulb17;
			ControlDictionary["Б ЦБ3-2 зел. лампочка"] = greenBulb18;
			ControlDictionary["Б ЦБ3-3 зел. лампочка"] = greenBulb19;
			ControlDictionary["Б ЦБ3-4 зел. лампочка"] = greenBulb20;
			ControlDictionary["Б ЦБ3-5 зел. лампочка"] = greenBulb21;
			ControlDictionary["Б ЦБ3-6 зел. лампочка"] = greenBulb22;
			ControlDictionary["Б ЦБ3-7 зел. лампочка"] = greenBulb23;
			ControlDictionary["Б ЦБ3-8 зел. лампочка"] = greenBulb24;
			ControlDictionary["Б ЦБ3-9 зел. лампочка"] = greenBulb25;
			ControlDictionary["Б П2 вкл зел. лампочка"] = greenBulb26;
			
			ControlDictionary["А ФСЧ3 кр. лампочка"] = redBulb1;
			ControlDictionary["А ТА2-1 кр. лампочка"] = redBulb2;
			ControlDictionary["А ТА2-2 кр. лампочка"] = redBulb3;
			ControlDictionary["А ГА3 кр. лампочка"] = redBulb4;
			ControlDictionary["А ЦА3-1 кр. лампочка"] = redBulb5;
			ControlDictionary["А ЦА3-2 кр. лампочка"] = redBulb6;
			ControlDictionary["А ЦА3-3 кр. лампочка"] = redBulb7;
			ControlDictionary["А ЦА3-4 кр. лампочка"] = redBulb8;
			ControlDictionary["А ЦА3-5 кр. лампочка"] = redBulb9;
			ControlDictionary["А ЦА3-6 кр. лампочка"] = redBulb10;
			ControlDictionary["А ЦА3-7 кр. лампочка"] = redBulb11;
			ControlDictionary["А ЦА3-8 кр. лампочка"] = redBulb12;
			ControlDictionary["А ЦА3-9 кр. лампочка"] = redBulb13;
			ControlDictionary["А П2 вкл кр. лампочка"] = redBulb14;
			
			ControlDictionary["Б ВЧ3 кр. лампочка"] = redBulb15;
			ControlDictionary["Б ТБ2-1-1 кр. лампочка"] = redBulb16;
			ControlDictionary["Б ТБ2-1-2 кр. лампочка"] = redBulb17;
			ControlDictionary["Б ТБ2-2-1 кр. лампочка"] = redBulb18;
			ControlDictionary["Б ТБ2-2-2 кр. лампочка"] = redBulb19;
			ControlDictionary["Б ГБ3 кр. лампочка"] = redBulb20;
			ControlDictionary["Б ЦБ3-1-1 кр. лампочка"] = redBulb21;
			ControlDictionary["Б ЦБ3-1-2 кр. лампочка"] = redBulb22;
			ControlDictionary["Б ЦБ3-2-1 кр. лампочка"] = redBulb23;
			ControlDictionary["Б ЦБ3-2-2 кр. лампочка"] = redBulb24;
			ControlDictionary["Б ЦБ3-3-1 кр. лампочка"] = redBulb25;
			ControlDictionary["Б ЦБ3-3-2 кр. лампочка"] = redBulb26;
			ControlDictionary["Б ЦБ3-4-1 кр. лампочка"] = redBulb27;
			ControlDictionary["Б ЦБ3-4-2 кр. лампочка"] = redBulb28;
			ControlDictionary["Б ЦБ3-5-1 кр. лампочка"] = redBulb29;
			ControlDictionary["Б ЦБ3-5-2 кр. лампочка"] = redBulb30;
			ControlDictionary["Б ЦБ3-6-1 кр. лампочка"] = redBulb31;
			ControlDictionary["Б ЦБ3-6-2 кр. лампочка"] = redBulb32;
			ControlDictionary["Б ЦБ3-7-1 кр. лампочка"] = redBulb33;
			ControlDictionary["Б ЦБ3-7-2 кр. лампочка"] = redBulb34;
			ControlDictionary["Б ЦБ3-8-1 кр. лампочка"] = redBulb35;
			ControlDictionary["Б ЦБ3-8-2 кр. лампочка"] = redBulb36;
			ControlDictionary["Б ЦБ3-9-1 кр. лампочка"] = redBulb37;
			ControlDictionary["Б ЦБ3-9-2 кр. лампочка"] = redBulb38;
			ControlDictionary["Б П2 вкл кр. лампочка"] = redBulb39;
			
			ControlDictionary["А Неименованая Правая 1"] = jumper1;
			ControlDictionary["А Неименованая Правая 2"] = jumper2;
			ControlDictionary["А Неименованая Правая 3"] = jumper3;
			ControlDictionary["А Неименованая Правая 4"] = jumper4;
			ControlDictionary["А Неименованая Правая 5"] = jumper5;
			ControlDictionary["А Неименованая Правая 6"] = jumper6;
			ControlDictionary["А Неименованая Правая 7"] = jumper7;
			ControlDictionary["А Неименованая Правая 8"] = jumper8;
			ControlDictionary["А ФСЧ3 пермычка"] = jumper9;
			ControlDictionary["А ТА2-1 пермычка 1"] = jumper10;
			ControlDictionary["А ТА2-1 пермычка 0"] = jumper11;
			ControlDictionary["А ТА2-1 пермычка КТ"] = jumper12;
			ControlDictionary["А ТА2-1 пермычка 2"] = jumper13;
			ControlDictionary["А ТА2-1 пермычка вниз"] = jumper14;
			ControlDictionary["А ТА2-2 пермычка 1"] = jumper15;
			ControlDictionary["А ТА2-2 пермычка 0"] = jumper16;
			ControlDictionary["А ТА2-2 пермычка КТ"] = jumper17;
			ControlDictionary["А ТА2-2 пермычка 2"] = jumper18;
			ControlDictionary["А ТА2-2 пермычка вниз"] = jumper19;
			ControlDictionary["А СКА2 перемычка 1-К"] = jumper20;
			ControlDictionary["А СКА2 перемычка 0-К"] = jumper21;
			ControlDictionary["А СКА2 перемычка Д-К"] = jumper22;
			ControlDictionary["А СКА2 перемычка 1-С"] = jumper23;
			ControlDictionary["А СКА2 перемычка 0-С"] = jumper24;
			ControlDictionary["А СКА2 перемычка Д-С"] = jumper25;
			ControlDictionary["А СКА2 перемычка 2"] = jumper26;
			ControlDictionary["А СКА2 перемычка вниз"] = jumper27;
			ControlDictionary["А ЦСА перемычка 7"] = jumper28;
			ControlDictionary["А ЦСА перемычка дельта 3"] = jumper29;
			ControlDictionary["А ЦСА перемычка 3"] = jumper30;
			ControlDictionary["А ЦСА перемычка дельта"] = jumper31;
			ControlDictionary["А ЦСА перемычка 0"] = jumper32;
			ControlDictionary["А ЦСА перемычка Д"] = jumper33;
			ControlDictionary["А ГКА перемычка 10"] = jumper34;
			ControlDictionary["А ГКА перемычка 5"] = jumper35;
			ControlDictionary["А ГКА перемычка 3"] = jumper36;
			ControlDictionary["А ГКА перемычка 2"] = jumper37;
			ControlDictionary["А ГКА перемычка Т"] = jumper38;
			ControlDictionary["А ГКА перемычка Д"] = jumper39;
			ControlDictionary["А ГКА перемычка А"] = jumper40;
			ControlDictionary["А ГКА перемычка 0"] = jumper41;
			ControlDictionary["А РВ3 перемычка 2"] = jumper42;
			ControlDictionary["А РВ3 перемычка вниз"] = jumper43;
			ControlDictionary["А РН3 перемычка"] = jumper44;
			ControlDictionary["А ГА3 перемычка 2"] = jumper45;
			ControlDictionary["А ГА3 перемычка вниз"] = jumper46;
			ControlDictionary["А ЦА3-1 перемычка А"] = jumper47;
			ControlDictionary["А ЦА3-1 перемычка С"] = jumper48;
			ControlDictionary["А ЦА3-1 перемычка 0"] = jumper49;
			ControlDictionary["А ЦА3-1 перемычка КТ"] = jumper50;
			ControlDictionary["А ЦА3-2 перемычка А"] = jumper51;
			ControlDictionary["А ЦА3-2 перемычка С"] = jumper52;
			ControlDictionary["А ЦА3-2 перемычка 0"] = jumper53;
			ControlDictionary["А ЦА3-2 перемычка КТ"] = jumper54;
			ControlDictionary["А ЦА3-3 перемычка А"] = jumper55;
			ControlDictionary["А ЦА3-3 перемычка С"] = jumper56;
			ControlDictionary["А ЦА3-3 перемычка 0"] = jumper57;
			ControlDictionary["А ЦА3-3 перемычка КТ"] = jumper58;
			ControlDictionary["А ЦА3-4 перемычка А"] = jumper59;
			ControlDictionary["А ЦА3-4 перемычка С"] = jumper60;
			ControlDictionary["А ЦА3-4 перемычка 0"] = jumper61;
			ControlDictionary["А ЦА3-4 перемычка КТ"] = jumper62;
			ControlDictionary["А ЦА3-5 перемычка А"] = jumper63;
			ControlDictionary["А ЦА3-5 перемычка С"] = jumper64;
			ControlDictionary["А ЦА3-5 перемычка 0"] = jumper65;
			ControlDictionary["А ЦА3-5 перемычка КТ"] = jumper66;
			ControlDictionary["А ЦА3-6 перемычка А"] = jumper67;
			ControlDictionary["А ЦА3-6 перемычка С"] = jumper68;
			ControlDictionary["А ЦА3-6 перемычка 0"] = jumper69;
			ControlDictionary["А ЦА3-6 перемычка КТ"] = jumper70;
			ControlDictionary["А ЦА3-7 перемычка А"] = jumper71;
			ControlDictionary["А ЦА3-7 перемычка С"] = jumper72;
			ControlDictionary["А ЦА3-7 перемычка 0"] = jumper73;
			ControlDictionary["А ЦА3-7 перемычка КТ"] = jumper74;
			ControlDictionary["А ЦА3-8 перемычка А"] = jumper75;
			ControlDictionary["А ЦА3-8 перемычка С"] = jumper76;
			ControlDictionary["А ЦА3-8 перемычка 0"] = jumper77;
			ControlDictionary["А ЦА3-8 перемычка КТ"] = jumper78;
			ControlDictionary["А ЦА3-9 перемычка А"] = jumper79;
			ControlDictionary["А ЦА3-9 перемычка С"] = jumper80;
			ControlDictionary["А ЦА3-9 перемычка 0"] = jumper81;
			ControlDictionary["А ЦА3-9 перемычка КТ"] = jumper82;
			
			ControlDictionary["Б ВЧ3 перемычка Б"] = jumper101;
			ControlDictionary["Б ВЧ3 перемычка У"] = jumper102;
			ControlDictionary["Б ВЧ3 перемычка ШГ"] = jumper103;
			ControlDictionary["Б ВЧ3 перемычка ВН"] = jumper104;
			ControlDictionary["Б ТБ2-1 перемычка ВН"] = jumper105;
			ControlDictionary["Б ТБ2-2 перемычка ВН"] = jumper106;
			ControlDictionary["Б ГКБ перемычка 10"] = jumper107;
			ControlDictionary["Б ГКБ перемычка 5"] = jumper108;
			ControlDictionary["Б ГКБ перемычка 3"] = jumper109;
			ControlDictionary["Б ГКБ перемычка 2"] = jumper110;
			ControlDictionary["Б ГКБ перемычка Т"] = jumper111;
			ControlDictionary["Б ГКБ перемычка Д"] = jumper112;
			ControlDictionary["Б ГКБ перемычка 7"] = jumper113;
			ControlDictionary["Б ГКБ перемычка дельта 3"] = jumper114;
			ControlDictionary["Б РВ3 перемычка 2"] = jumper115;
			ControlDictionary["Б РВ3 перемычка вн"] = jumper116;
			ControlDictionary["Б РН3 перемычка вн"] = jumper117;
			ControlDictionary["Б ГБ3 перемычка 2"] = jumper118;
			ControlDictionary["Б ГБ3 перемычка вн"] = jumper119;
			ControlDictionary["Б КЗ-1 перемычка 1"] = jumper120;
			ControlDictionary["Б КЗ-1 перемычка 2"] = jumper121;
			ControlDictionary["Б КЗ-1 перемычка 3"] = jumper122;
			ControlDictionary["Б КЗ-1 перемычка 4"] = jumper123;
			ControlDictionary["Б КЗ-1 перемычка 5"] = jumper124;
			ControlDictionary["Б КЗ-1 перемычка 6"] = jumper125;
			ControlDictionary["Б КЗ-1 перемычка 7"] = jumper126;
			ControlDictionary["Б КЗ-1 перемычка 8"] = jumper127;
			ControlDictionary["Б КЗ-1 перемычка 9"] = jumper128;
			ControlDictionary["Б ЦБ3-1 перемычка А"] = jumper129;
			ControlDictionary["Б ЦБ3-1 перемычка С"] = jumper130;
			ControlDictionary["Б ЦБ3-1 перемычка ВН"] = jumper131;
			ControlDictionary["Б КЗ-2 перемычка 1"] = jumper132;
			ControlDictionary["Б КЗ-2 перемычка 2"] = jumper133;
			ControlDictionary["Б КЗ-2 перемычка 3"] = jumper134;
			ControlDictionary["Б КЗ-2 перемычка 4"] = jumper135;
			ControlDictionary["Б КЗ-2 перемычка 5"] = jumper136;
			ControlDictionary["Б КЗ-2 перемычка 6"] = jumper137;
			ControlDictionary["Б КЗ-2 перемычка 7"] = jumper138;
			ControlDictionary["Б КЗ-2 перемычка 8"] = jumper139;
			ControlDictionary["Б КЗ-2 перемычка 9"] = jumper140;
			ControlDictionary["Б ЦБ3-2 перемычка А"] = jumper141;
			ControlDictionary["Б ЦБ3-2 перемычка С"] = jumper142;
			ControlDictionary["Б ЦБ3-2 перемычка ВН"] = jumper143;
			ControlDictionary["Б КЗ-3 перемычка 1"] = jumper144;
			ControlDictionary["Б КЗ-3 перемычка 2"] = jumper145;
			ControlDictionary["Б КЗ-3 перемычка 3"] = jumper146;
			ControlDictionary["Б КЗ-3 перемычка 4"] = jumper147;
			ControlDictionary["Б КЗ-3 перемычка 5"] = jumper148;
			ControlDictionary["Б КЗ-3 перемычка 6"] = jumper149;
			ControlDictionary["Б КЗ-3 перемычка 7"] = jumper150;
			ControlDictionary["Б КЗ-3 перемычка 8"] = jumper151;
			ControlDictionary["Б КЗ-3 перемычка 9"] = jumper152;
			ControlDictionary["Б ЦБ3-3 перемычка А"] = jumper153;
			ControlDictionary["Б ЦБ3-3 перемычка С"] = jumper154;
			ControlDictionary["Б ЦБ3-3 перемычка ВН"] = jumper155;
			ControlDictionary["Б ЦБ3-4 перемычка А"] = jumper156;
			ControlDictionary["Б ЦБ3-4 перемычка С"] = jumper157;
			ControlDictionary["Б ЦБ3-4 перемычка ВН"] = jumper158;
			ControlDictionary["Б ЦБ3-5 перемычка А"] = jumper159;
			ControlDictionary["Б ЦБ3-5 перемычка С"] = jumper160;
			ControlDictionary["Б ЦБ3-5 перемычка ВН"] = jumper161;
			ControlDictionary["Б ЦБ3-6 перемычка А"] = jumper162;
			ControlDictionary["Б ЦБ3-6 перемычка С"] = jumper163;
			ControlDictionary["Б ЦБ3-6 перемычка ВН"] = jumper164;
			ControlDictionary["Б ЦБ3-7 перемычка А"] = jumper165;
			ControlDictionary["Б ЦБ3-7 перемычка С"] = jumper166;
			ControlDictionary["Б ЦБ3-7 перемычка ВН"] = jumper167;
			ControlDictionary["Б ЦБ3-8 перемычка А"] = jumper168;
			ControlDictionary["Б ЦБ3-8 перемычка С"] = jumper169;
			ControlDictionary["Б ЦБ3-8 перемычка ВН"] = jumper170;
			ControlDictionary["Б ЦБ3-9 перемычка А"] = jumper171;
			ControlDictionary["Б ЦБ3-9 перемычка С"] = jumper172;
			ControlDictionary["Б ЦБ3-9 перемычка ВН"] = jumper173;
			ControlDictionary["Б П2 перемычка 6.3"] = jumper174;
			ControlDictionary["Б П2 перемычка 27"] = jumper175;
			ControlDictionary["Б П2 перемычка 24"] = jumper176;
			ControlDictionary["Б П2 перемычка СРТ"] = jumper177;
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
		
		private function InitializeTrainingSequence()
		{
			AddToTraining(ControlDictionary["А Включатель"], "Установите Тумблер М-Д в положение М", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б Включатель"], "Установите Тумблер М-Д в положение М", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ТА2-1 пермычка 1"], "Установите переключатель 1-0 в положение 1", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А СКА2 перемычка 1-К"], "Установите переключатель С в положение 1", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А СКА2 перемычка 1-С"], "Установите переключатель К в положение 1", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦСА перемычка 7"], "Установите переключатель РЕЖИМ 10 КАН в положение 7", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ГКА перемычка 10"], "Установите переключатель ГР СК в положение 10х48", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ГКА перемычка А"], "Установите переключатель А-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-1 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-2 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-3 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-4 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-5 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-6 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-7 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-8 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А ЦА3-9 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ВЧ3 перемычка Б"], "Установите переключатель Б-У в положение Б", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ГКБ перемычка 10"], "Установите переключатель ГР СК в положение 10х48", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ГКБ перемычка 7"], "Установите переключатель РЕЖИМ 10 КАН в положение 7", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б КЗ-1 перемычка 1"], "Установите переключатель I комплекта блока КЗ в положение 1", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-1 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б КЗ-2 перемычка 2"], "Установите переключатель II комплекта блока КЗ в положение 2", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-2 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б КЗ-3 перемычка 3"], "Установите переключатель III комплекта блока КЗ в положение 3", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-3 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-4 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-5 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-6 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-7 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-8 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б ЦБ3-9 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А Включатель"], "Установите Тумблер М-Д в положение Д", ControlElement.S_B_DEFAULT);
			AddToTraining(ControlDictionary["Б Включатель"], "Установите Тумблер М-Д в положение Д", ControlElement.S_B_DEFAULT);
		}
		
		private function InitializeWorkingSequence()
		{
			AddToTraining(ControlDictionary["А Включатель"], "Установите Тумблер М-Д в положение М", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Б Включатель"], "Установите Тумблер М-Д в положение М", ControlElement.S_B_CHOSEN);
			
			if ((ControlDictionary["А ГКА перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
			{
				if (ModeInfo.modeInfo.Speed == ModeInfo.S_480)
					AddToTraining(ControlDictionary["А ГКА перемычка 10"], "Установите переключатель ГР СК в положение 10х48", ControlElement.S_B_CHOSEN);
				AddToTraining(ControlDictionary["А ГКА перемычка А"], "Установите переключатель А-О в положение А", ControlElement.S_B_CHOSEN);
			}
			if ((ControlDictionary["А СКА2 перемычка 1-К"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А СКА2 перемычка 1-К"], "Установите переключатель К в положение 1", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А СКА2 перемычка 1-С"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А СКА2 перемычка 1-С"], "Установите переключатель С в положение 1", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А СКА2 перемычка Д-К"], "Установите переключатель К в положение Д", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["А СКА2 перемычка Д-С"], "Установите переключатель С в положение Д", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ТА2-1 пермычка 1"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ТА2-1 пермычка 1"], "Установите переключатель 1-0 в положение 1", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ТА2-2 пермычка 1"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ТА2-2 пермычка 1"], "Установите переключатель 1-0 в положение 1", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-1 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-1 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-2 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-2 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-3 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-3 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-4 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-4 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-5 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-5 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-6 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-6 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-7 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-7 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-8 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-8 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦА3-9 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦА3-9 перемычка А"], "Установите переключатель А-С-О в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["А ЦСА перемычка дельта 3"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["А ЦСА перемычка дельта 3"], "Установите переключатель РЕЖИМ 10 КАН в положение Δ/3", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ВЧ3 перемычка Б"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ВЧ3 перемычка Б"], "Установите переключатель Б-У в положение Б", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ГКБ перемычка 10"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ГКБ перемычка 10"], "Установите переключатель ГР СК в положение 10х48", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-1 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-1 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-2 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-2 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-3 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-3 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-4 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-4 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-5 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-5 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-6 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-6 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-7 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-7 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-8 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-8 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ЦБ3-9 перемычка А"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ЦБ3-9 перемычка А"], "Установите переключатель А-С в положение А", ControlElement.S_B_CHOSEN);
			if ((ControlDictionary["Б ГКБ перемычка дельта 3"] as ControlElement).CurrentState != ControlElement.S_B_CHOSEN)
				AddToTraining(ControlDictionary["Б ГКБ перемычка дельта 3"], "Установите переключатель РЕЖИМ 10 КАН в положение Δ/3", ControlElement.S_B_CHOSEN);
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["А Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick1);
			(ControlDictionary["Б Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick2);
			(ControlDictionary["А ГКА перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick10);
			(ControlDictionary["А ЦА3-1 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick1);
			(ControlDictionary["А ЦА3-2 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick2);
			(ControlDictionary["А ЦА3-3 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick3);
			(ControlDictionary["А ЦА3-4 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick4);
			(ControlDictionary["А ЦА3-5 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick5);
			(ControlDictionary["А ЦА3-6 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick6);
			(ControlDictionary["А ЦА3-7 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick7);
			(ControlDictionary["А ЦА3-8 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick8);
			(ControlDictionary["А ЦА3-9 перемычка А"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick9);
			(ControlDictionary["А ЦСА перемычка дельта 3"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick11);
			(ControlDictionary["Б ГКБ перемычка 10"] as ControlElement).addEventListener(MouseEvent.CLICK, JumperClick12);
		}
		
		private function SwitchMouseClick1(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["А П2 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["А ГА3 зел. лампочка"] as ControlElement).GoToState(newState, false);
			if (newState == ControlElement.S_B_DEFAULT)
			{
				var item:String;
				for (item in ControlDictionary)
				{
					if (item.charCodeAt(0) == "А".charCodeAt(0))
					{
						if ((ControlDictionary[item] as Bulb) != null)
						{
							(ControlDictionary[item] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false)
						}
					}
				}
			}
			else
			{
				JumperClick1(null);
				JumperClick2(null);
				JumperClick3(null);
				JumperClick4(null);
				JumperClick5(null);
				JumperClick6(null);
				JumperClick7(null);
				JumperClick8(null);
				JumperClick9(null);
				JumperClick10(null);
				JumperClick11(null);
			}
		}
		
		private function SwitchMouseClick2(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["Б Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["Б П2 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["Б ГБ3 зел. лампочка"] as ControlElement).GoToState(newState, false);
			if (newState == ControlElement.S_B_DEFAULT)
			{
				var item:String;
				for (item in ControlDictionary)
				{
					if (item.charCodeAt(0) == "Б".charCodeAt(0))
					{
						if ((ControlDictionary[item] as Bulb) != null)
						{
							(ControlDictionary[item] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false)
						}
					}
				}
			}
			else
			{
				JumperClick12(null);
			}
		}
		
		private function JumperClick10(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ГКА перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ГА3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick1(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-1 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-1 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick2(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-2 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-2 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick3(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-3 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick4(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-4 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-4 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick5(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-5 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-5 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick6(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-6 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-6 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick7(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-7 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-7 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick8(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-8 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-8 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick9(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦА3-9 перемычка А"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦА3-9 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick11(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["А ЦСА перемычка дельта 3"] as ControlElement).CurrentState;
			(ControlDictionary["А ЦСА зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function JumperClick12(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["Б ГКБ перемычка 10"] as ControlElement).CurrentState;
			(ControlDictionary["Б ВЧ3 зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["Б ГБ3 зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}
}
