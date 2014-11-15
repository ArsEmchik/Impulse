package screens
{
	import blocks.ModeInfo;
	import buttons.ComponentGroup;
	import buttons.MessageBoxClass;
	import fl.controls.Button;
	import fl.controls.ComboBox;
	import fl.controls.Label;
	import fl.controls.NumericStepper;
	import fl.controls.RadioButton;
	import fl.controls.Slider;
	import fl.controls.TextInput;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.ByteArray;
	
	public dynamic class ModeScreen extends MovieClip
	{
		public var main_mode_1:RadioButton;
		public var main_mode_2:RadioButton;
		public var main_mode_3:RadioButton;
		public var main_mode_4:RadioButton;
		public var t_start_button:Button;
		public var mode_0:RadioButton;
		public var mode_1:RadioButton;
		public var mode_2:RadioButton;
		public var mode_3:RadioButton;
		public var t_tb_num:TextInput;
		public var t_tb_fio:TextInput;
		public var fio_label1:Label;
		public var fio_label2:Label;
		public var local_mode_0:RadioButton;
		public var t_speed_combo_box_prepare:ComboBox;
		public var speed_label_prepare:Label;
		public var message_box:MovieClip;
		public var main_mode_2_l:Label;
		public var main_mode_3_l:Label;
		public var txt_scenario_info:TextField;
		
		var main_mode:int;
		var impuls_mode:int;
		var local_mode:int;
		var speed_mode:int;
		var need_chanels:int;
		var zk_count:int;
		var ktch_count:int;
		
		var main_screen:MainScreen;
		var main_mode_mas:Vector.<RadioButton> = new Vector.<RadioButton>(); //обуч трен контроль
		var mode_mas:Vector.<RadioButton> = new Vector.<RadioButton>(); //подготовка включение коммутация
		var speed_combo_box:ComboBox; // 48 кбит
		var channel_count:NumericStepper;
		var channel_slider:Slider; // цк - ктч
		var start_button:Button;
		var cable1_zk:Vector.<NumericStepper> = new Vector.<NumericStepper>();
		var radiobuttons1:Vector.<RadioButton> = new Vector.<RadioButton>();
		var cable2_zk:Vector.<NumericStepper> = new Vector.<NumericStepper>();
		var radiobuttons2:Vector.<RadioButton> = new Vector.<RadioButton>();
		var cable1_ktch:Vector.<NumericStepper> = new Vector.<NumericStepper>();
		var cable2_ktch:Vector.<NumericStepper> = new Vector.<NumericStepper>();
		var cable_label:Vector.<Label> = new Vector.<Label>();
		var tb_fio:TextInput;
		var tb_num:TextInput;
		var speed_combo_box_prepare:ComboBox;
		
		var main_mode_group:ComponentGroup;
		var mode_mas_group:ComponentGroup;
		var speed_group:ComponentGroup;
		var channel_group:ComponentGroup;
		var cable_group:ComponentGroup;
		var fio_group:ComponentGroup;
		var start_group:ComponentGroup;
		var speed_preapare_group:ComponentGroup;
		var scenarios_brief:Array = new Array();
		var scenarios_sequence:Array = new Array();
		
		private var armyFilter: GlowFilter = new GlowFilter(0xAACCAA, 1, 6, 6, 3);
		
		[Embed(source="../scenarios.txt",mimeType="application/octet-stream")]
		var scenarios:Class;
		
		public function ModeScreen()
		{
			removeChild(message_box);
			
			main_mode_mas.push(main_mode_1);
			main_mode_mas.push(main_mode_2);
			main_mode_mas.push(main_mode_3);
			main_mode_mas.push(main_mode_4);
			
			mode_mas.push(mode_1);
			mode_mas.push(mode_2);
			mode_mas.push(mode_3);
			
			speed_combo_box_prepare = t_speed_combo_box_prepare;
			
			start_button = t_start_button;
			
			tb_fio = t_tb_fio;
			tb_num = t_tb_num;
			
			createGroups();
			setEvents();
		}
		
		public function initializeModeScreen(p_main_screen:MainScreen)
		{
			main_screen = p_main_screen;
			
			SetStyleToRadioButtonsAndLabels();
		}
		
		private function createGroups()
		{
			var speed_group_mas:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			var channel_group_mas:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			
			var fio_group_mas:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			fio_group_mas.push(tb_fio, tb_num, fio_label1, fio_label2);
			
			var start_group_mas:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			start_group_mas.push(start_button);
			
			var prepare_group_mas:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			prepare_group_mas.push(this.speed_combo_box_prepare, speed_label_prepare);
			
			main_mode_group = new ComponentGroup(this, (new Vector.<DisplayObject>()).concat(main_mode_mas));
			mode_mas_group = new ComponentGroup(this, (new Vector.<DisplayObject>()).concat(mode_mas));
			
			speed_group = new ComponentGroup(this, speed_group_mas);
			channel_group = new ComponentGroup(this, channel_group_mas);
			cable_group = new ComponentGroup(this, makeCableGroupAsDislayObjects());
			fio_group = new ComponentGroup(this, fio_group_mas);
			start_group = new ComponentGroup(this, start_group_mas);
			speed_preapare_group = new ComponentGroup(this, prepare_group_mas);
			
			main_mode_group.SetVisible(true);
		}
		
		private function makeCableGroupAsDislayObjects()
		{
			var result_mas:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			for (var i:int = 0; i < cable1_zk.length; i++)
			{
				result_mas.push(cable1_zk[i]);
			}
			
			for (var i:int = 0; i < cable2_zk.length; i++)
			{
				result_mas.push(cable2_zk[i]);
			}
			
			for (var i:int = 0; i < cable1_ktch.length; i++)
			{
				result_mas.push(cable1_ktch[i]);
			}
			
			for (var i:int = 0; i < cable2_ktch.length; i++)
			{
				result_mas.push(cable2_ktch[i]);
			}
			
			for (var i:int = 0; i < cable_label.length; i++)
			{
				result_mas.push(cable_label[i]);
			}
			
			for (var i:int = 0; i < radiobuttons1.length; i++)
			{
				result_mas.push(this.radiobuttons1[i]);
			}
			
			for (var i:int = 0; i < radiobuttons2.length; i++)
			{
				result_mas.push(radiobuttons2[i]);
			}
			
			result_mas.push(start_button);
			
			return (result_mas);
		}
		
		private function setEvents()
		{
			for (var i:int = 0; i < main_mode_mas.length; i++)
			{
				main_mode_mas[i].addEventListener(MouseEvent.CLICK, mainModeSelected);
			}
			for (var i:int = 0; i < mode_mas.length; i++)
			{
				mode_mas[i].addEventListener(MouseEvent.CLICK, modeSelected);
			}
			speed_combo_box_prepare.addEventListener(Event.CHANGE, speedOrScenarioSelected);
			start_button.addEventListener(MouseEvent.MOUSE_UP, startButtonClick);
		}
		
		private function RadioButtonCheck(r_button:RadioButton)
		{
			if (r_button == null)
			{
				throw new Error("Только для радиобатонов");
			}
		}
		
		private function SetStyleToRadioButtonsAndLabels()
		{
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			
			for (var i:int = 0; i < main_mode_mas.length; i++)
			{
				main_mode_mas[i].setStyle("textFormat", tf);
				main_mode_mas[i].textField.multiline = true;
				main_mode_mas[i].label = main_mode_mas[i].label.replace(/\#/g, "\n");
			}
			
			for (var i:int = 0; i < mode_mas.length; i++)
			{
				mode_mas[i].setStyle("textFormat", tf);
			}
			
			for (var i:int = 0; i < cable_label.length; i++)
			{
				cable_label[i].setStyle("textFormat", tf);
			}
			
			start_button.setStyle("textFormat", tf);
			
			speed_label_prepare.setStyle("textFormat", tf);
			speed_combo_box_prepare.setStyle("textFormat", tf);
			
			tb_fio.setStyle("textFormat", tf);
			tb_num.setStyle("textFormat", tf);
			
			fio_label1.setStyle("textFormat", tf);
			fio_label2.setStyle("textFormat", tf);
		}
		
		private function clearGroups(groups:Vector.<ComponentGroup>)
		{
			for (var i:int = 0; i < groups.length; i++)
			{
				groups[i].ClearAndSetInvisible();
			}
		}
		
		private function mainModeSelected(e:MouseEvent)
		{
			var r_button:RadioButton = (e.target as RadioButton);
			RadioButtonCheck(r_button);
			for (var i:int = 0; i < main_mode_mas.length; i++)
			{
				if (r_button == main_mode_mas[i])
				{
					break;
				}
			}
			main_mode = i;
			var clear_groups:Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
			clear_groups.push(mode_mas_group, speed_group, channel_group, cable_group, fio_group, start_group, speed_preapare_group);
			clearGroups(clear_groups);
			showScenarioInfo(false);
			switch (main_mode)
			{
				case ModeInfo.MM_INSTRUCTION: 
				case ModeInfo.MM_TRAINIGWITHHINT: 
				case ModeInfo.MM_TRAINIGWITHOUTHINT: 
				case ModeInfo.MM_CONTROL: 
					mode_0.selected = true;
					mode_mas_group.SetVisible(true);
					break;
				default: 
					throw new Error("Выбран неизвестный режим");
			}
		}
		
		private function modeSelected(e:MouseEvent)
		{
			var r_button:RadioButton = (e.target as RadioButton);
			RadioButtonCheck(r_button);
			for (var i:int = 0; i < mode_mas.length; i++)
			{
				if (r_button == mode_mas[i])
				{
					break;
				}
			}
			
			impuls_mode = i;
			var clear_groups:Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
			clear_groups.push(speed_group, channel_group, cable_group, start_group, speed_preapare_group);
			clearGroups(clear_groups);
			showScenarioInfo(false);
			
			if (main_mode == ModeInfo.MM_CONTROL)
			{
				fio_group.SetVisible(true);
			}
			
			if (impuls_mode == ModeInfo.M_COMMUTATION)
			{
				speed_label_prepare.text = "Сценарий";
				
				var tf:TextFormat = new TextFormat();
				tf.size = 15;
				speed_label_prepare.setStyle("textFormat", tf);
				
				txt_scenario_info.filters = [armyFilter];
				
				loadScenariosInfo();
				speed_preapare_group.SetVisible(true);
			}
			else
			{
				speed_label_prepare.text = "Скорость";
				
				var tf:TextFormat = new TextFormat();
				tf.size = 15;
				speed_label_prepare.setStyle("textFormat", tf);
				
				fillSpeedComboBox();
				speed_preapare_group.SetVisible(true);
			}
		}
		
		private function speedOrScenarioSelected(e:Event)
		{
			start_group.SetVisible(false);
			showScenarioInfo(true);
			txt_scenario_info.text = "";
			if ((speed_combo_box_prepare.selectedItem as ValueData).data != -1)
			{
				start_group.SetVisible(true);
				if (ModeInfo.M_COMMUTATION == impuls_mode)
				{
					showScenarioInfo(true);
					txt_scenario_info.text = scenarios_brief[(speed_combo_box_prepare.selectedItem as ValueData).data];
				}
				else
				{
					speed_mode = (speed_combo_box_prepare.selectedItem as ValueData).data;
				}
			}
		}
		
		private function fillSpeedComboBox()
		{
			speed_combo_box_prepare.removeAll();
			speed_combo_box_prepare.addItem(new ValueData("", -1));
			speed_combo_box_prepare.addItem(new ValueData("48 кбит", ModeInfo.S_48));
			speed_combo_box_prepare.addItem(new ValueData("480 кбит", ModeInfo.S_480));
			speed_combo_box_prepare.addItem(new ValueData("2048 кбит", ModeInfo.S_2048));
		}
		
		private function startButtonClick(e:MouseEvent)
		{
			if ((t_tb_fio.text == "") && (this.main_mode == ModeInfo.MM_CONTROL))
			{
				(message_box as MessageBoxClass).InitializeMessageBox(null, "Поле «ФИО» обязательно для заполнения", this);
				return;
			}
			
			fillModeInfo();
			
			main_screen.InitializeGlobalScreen();
		}
		
		private function fillModeInfo()
		{
			if (ModeInfo.M_COMMUTATION == impuls_mode)
			{
				parseSelectedScenario();
			}
			
			ModeInfo.modeInfo.fio = t_tb_fio.text;
			ModeInfo.modeInfo.vzv_num = t_tb_num.text;
			ModeInfo.modeInfo.MainMode = main_mode;
			ModeInfo.modeInfo.Mode = impuls_mode;
			ModeInfo.modeInfo.Speed = speed_mode;
			ModeInfo.modeInfo.LocalMode = local_mode;
			ModeInfo.modeInfo.scenario = (speed_combo_box_prepare.selectedItem as ValueData).data;
			ModeInfo.modeInfo.SetBlocks();
		}
		
		private static function trim(s:String, i:int, array:Array):String
		{
			return s.replace(/^\s+|\s+$/g, "");
		}
		
		private function loadScenariosInfo()
		{
			speed_combo_box_prepare.removeAll();
			txt_scenario_info.text = "";
			
			speed_combo_box_prepare.addItem(new ValueData("", -1));
			
			var scenariosData:ByteArray = new scenarios() as ByteArray;
			var scenariosText:Array = scenariosData.readUTFBytes(scenariosData.length).split("@").map(trim);
			var i:int = 0;
			for each (var scenario:String in scenariosText)
			{
				speed_combo_box_prepare.addItem(new ValueData("Сценарий №" + int(i + 1), i));
				
				var scenario_data:Array = scenario.split("$", 2).map(trim);
				
				scenarios_brief.push(scenario_data[0]);
				scenarios_sequence.push(scenario_data[1]);
				i++;
			}
		}
		
		private function showScenarioInfo(val:Boolean)
		{
			txt_scenario_info.visible = val;
		}
		
		private function parseSelectedScenario()
		{
			var parsedCommonInfo:Array;
			ModeInfo.modeInfo.SeqCommutation = new Array();
			ModeInfo.modeInfo.SeqLink = new Array();
			ModeInfo.modeInfo.scenarioDescription = scenarios_brief[(speed_combo_box_prepare.selectedItem as ValueData).data];
			
			parsedCommonInfo = scenarios_sequence[(speed_combo_box_prepare.selectedItem as ValueData).data].split("|", 4).map(trim);
			local_mode = int(parsedCommonInfo[0]);
			
			var parsedComplectInfo:Array;
			parsedComplectInfo = parsedCommonInfo[1].split("*", 100).map(trim);
			ModeInfo.modeInfo.KtchChannels[0] = int(parsedComplectInfo[0]);
			ModeInfo.modeInfo.Czk86Channels[0] = int(parsedComplectInfo[1]);
			ModeInfo.modeInfo.KtchChannels[1] = int(parsedComplectInfo[2]);
			ModeInfo.modeInfo.Czk86Channels[1] = int(parsedComplectInfo[3]);
			ModeInfo.modeInfo.KtchChannels[2] = int(parsedComplectInfo[4]);
			ModeInfo.modeInfo.Czk86Channels[2] = int(parsedComplectInfo[5]);
			ModeInfo.modeInfo.P296n1 = int(parsedComplectInfo[6]);
			
			var parsedStepsInfo:Array;
			var i:int;
			for (i = 7; i < parsedComplectInfo.length; i++)
			{
				if (parsedComplectInfo[i] == "")
				{
					break;
				}
				parsedStepsInfo = parsedComplectInfo[i].split(">", 100).map(trim);
				ModeInfo.modeInfo.SeqCommutation.push(parsedStepsInfo);
			}
			
			parsedComplectInfo = parsedCommonInfo[2].split("*", 100).map(trim);
			ModeInfo.modeInfo.KtchChannels[3] = int(parsedComplectInfo[0]);
			ModeInfo.modeInfo.Czk86Channels[3] = int(parsedComplectInfo[1]);
			ModeInfo.modeInfo.KtchChannels[4] = int(parsedComplectInfo[2]);
			ModeInfo.modeInfo.Czk86Channels[4] = int(parsedComplectInfo[3]);
			ModeInfo.modeInfo.KtchChannels[5] = int(parsedComplectInfo[4]);
			ModeInfo.modeInfo.Czk86Channels[5] = int(parsedComplectInfo[5]);
			ModeInfo.modeInfo.P296n2 = int(parsedComplectInfo[6]);
			
			for (i = 7; i < parsedComplectInfo.length; i++)
			{
				if (parsedComplectInfo[i] == "")
				{
					break;
				}
				parsedStepsInfo = parsedComplectInfo[i].split(">", 100).map(trim);
				ModeInfo.modeInfo.SeqCommutation.push(parsedStepsInfo);
			}
			
			var parsedLinkInfo:Array;
			parsedLinkInfo = parsedCommonInfo[3].split("*", 100).map(trim);
			
			for (i = 0; i < parsedLinkInfo.length; i++)
			{
				ModeInfo.modeInfo.SeqLink.push(parsedLinkInfo[i].split(">", 100).map(trim));
			}
		
		}
	}
}