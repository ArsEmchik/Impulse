package screens
{

	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.controls.RadioButton;
	import fl.controls.ComboBox;
	import fl.controls.Slider;
	import fl.controls.Button;
	import fl.controls.NumericStepper;
	import fl.controls.TextInput;
	import flash.display.DisplayObject;
	import buttons.ComponentGroup;
	import fl.controls.Label;
	import blocks.ModeInfo;
	import fl.events.DataChangeEvent;
	import flash.events.Event;
	import flash.text.TextFormat;
	import buttons.MessageBoxClass;
	import fl.controls.CheckBox;
	import MessageBox;

	public dynamic class ModeScreen extends MovieClip {
		
		/*private var main_mode_1: RadioButton;
		private var main_mode_2: RadioButton;
		private var main_mode_3: RadioButton;
		private var main_mode_4: RadioButton;
		private var t_start_button: Button;
		private var mode_0: RadioButton;
		private var mode_1: RadioButton;
		private var mode_2: RadioButton;
		private var mode_3: RadioButton;
		private var t_tb_num: TextInput;
		private var t_tb_fio: TextInput;
		private var fio_label1: Label;
		private var fio_label2: Label;
		private var local_mode_0: RadioButton;
		private var t_speed_combo_box_prepare: ComboBox;
		private var speed_label_prepare: Label;
		private var message_box: MessageBox;
		private var main_mode_2_l: Label;
		private var main_mode_3_l: Label;*/

	var main_mode:int;
	var impuls_mode:int;
	var local_mode:int;
	var speed_mode:int;
	var need_chanels:int;
	var zk_count:int;
	var ktch_count:int;

	var main_screen:MainScreen;
	var main_mode_mas: Vector.<RadioButton> = new Vector.<RadioButton>();//обуч трен контроль
	var mode_mas: Vector.<RadioButton> = new Vector.<RadioButton>();//подготовка включение коммутация
	var speed_combo_box:ComboBox;// 48 кбит
	var channel_count:NumericStepper;
	var channel_slider:Slider;// цк - ктч
	var start_button:Button;
	var cable1_zk: Vector.<NumericStepper> = new Vector.<NumericStepper>();
	var radiobuttons1: Vector.<RadioButton> = new Vector.<RadioButton>();
	var cable2_zk: Vector.<NumericStepper> = new Vector.<NumericStepper>();
	var radiobuttons2: Vector.<RadioButton> = new Vector.<RadioButton>();
	var cable1_ktch: Vector.<NumericStepper> = new Vector.<NumericStepper>();
	var cable2_ktch: Vector.<NumericStepper> = new Vector.<NumericStepper>();
	var cable_label: Vector.<Label> = new Vector.<Label>();
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
	var scenario_infoes: Array = new Array();
	var scenario_sequential_infoes: Array = new Array();

	//var mode_info: ModeInfo = new ModeInfo();

	public function ModeScreen()
	{
		this.removeChild(message_box);
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
		SetGroups();
		SetEvents();
		SetStyleToRadioButtonsAndLabels();
	}
	public function InitializeStartModeScreen(p_main_screen: MainScreen)
	{
		main_screen = p_main_screen;
	}


	private function SetGroups()
	{
		var speed_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		var channel_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		var fio_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		fio_group_mas.push(tb_fio,tb_num,fio_label1,fio_label2);
		var start_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		start_group_mas.push(start_button);
		var prepare_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		prepare_group_mas.push(this.speed_combo_box_prepare,speed_label_prepare);
		main_mode_group = new ComponentGroup(this,(new Vector.<DisplayObject>()).concat(main_mode_mas));
		mode_mas_group = new ComponentGroup(this,(new Vector.<DisplayObject>()).concat(mode_mas));
		speed_group = new ComponentGroup(this,speed_group_mas);
		channel_group = new ComponentGroup(this,channel_group_mas);
		cable_group = new ComponentGroup(this,GetCableGroupAsDislayObjects());
		fio_group = new ComponentGroup(this,fio_group_mas);
		start_group = new ComponentGroup(this,start_group_mas);
		speed_preapare_group = new ComponentGroup(this,prepare_group_mas);
		main_mode_group.SetVisible(true);
	}
	private function GetCableGroupAsDislayObjects()
	{
		var result_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		var i:int;
		for (i=0; i<cable1_zk.length; i++)
		{
			result_mas.push(cable1_zk[i]);
		}
		for (i=0; i<cable2_zk.length; i++)
		{
			result_mas.push(cable2_zk[i]);
		}
		for (i=0; i<cable1_ktch.length; i++)
		{
			result_mas.push(cable1_ktch[i]);
		}
		for (i=0; i<cable2_ktch.length; i++)
		{
			result_mas.push(cable2_ktch[i]);
		}
		for (i=0; i<cable_label.length; i++)
		{
			result_mas.push(cable_label[i]);
		}
		for (i=0; i<this.radiobuttons1.length; i++)
		{
			result_mas.push(this.radiobuttons1[i]);
		}
		for (i=0; i<this.radiobuttons2.length; i++)
		{
			result_mas.push(this.radiobuttons2[i]);
		}
		result_mas.push(this.start_button);
		return (result_mas);
	}
	private function SetEvents()
	{
		var i:int;
		for (i=0; i<main_mode_mas.length; i++)
		{
			main_mode_mas[i].addEventListener(MouseEvent.CLICK,MainModeRadioButton);
		}
		for (i=0; i<mode_mas.length; i++)
		{
			mode_mas[i].addEventListener(MouseEvent.CLICK,ModeRadioButton);
		}
		speed_combo_box_prepare.addEventListener(Event.CHANGE,PrepareComboBoxChange);
		this.start_button.addEventListener(MouseEvent.MOUSE_UP,StartButtonClick);
	}
	private function MainModeRadioButton(e: MouseEvent)
	{
		var i:int;
		var r_button: RadioButton = (e.target as RadioButton);
		RadioButtonCheck(r_button);
		for (i=0; i<main_mode_mas.length; i++)
		{
			if (r_button == main_mode_mas[i])
			{
				break;
			}
		}
		main_mode = i;
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(mode_mas_group,speed_group,channel_group,cable_group,fio_group,start_group,speed_preapare_group);
		ClearGroups(clear_groups);
		this.SetVisibleScenarioInfo(false);
		switch (main_mode)
		{
			case ModeInfo.MM_INSTRUCTION :
			case ModeInfo.MM_TRAINIGWITHHINT :
			case ModeInfo.MM_TRAINIGWITHOUTHINT :
			case ModeInfo.MM_CONTROL :
				mode_0.selected = true;
				mode_mas_group.SetVisible(true);
				break;
			default :
				throw new Error("Некорректна логика");
		}
	}
	private function RadioButtonCheck(r_button: RadioButton)
	{
		if (r_button == null)
		{
			throw new Error("Только для радиобатонов");
		}
	}
	private function ClearGroups(groups: Vector.<ComponentGroup>)
	{
		var i:int;
		for (i=0; i<groups.length; i++)
		{
			groups[i].ClearAndSetInvisible();
		}
	}
	private function ModeRadioButton(e: MouseEvent)
	{
		var i:int;
		var r_button: RadioButton = (e.target as RadioButton);
		RadioButtonCheck(r_button);
		for (i=0; i<mode_mas.length; i++)
		{
			if (r_button == mode_mas[i])
			{
				break;
			}
		}
		impuls_mode = i;
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(speed_group,channel_group,cable_group,start_group,speed_preapare_group);
		ClearGroups(clear_groups);
		this.SetVisibleScenarioInfo(false);
		if (this.main_mode == ModeInfo.MM_CONTROL)
		{
			fio_group.SetVisible(true);
		}
		if (ModeInfo.M_COMMUTATION == impuls_mode)
		{
			this.speed_label_prepare.text = "Сценарий";
			LoadScenarioInfoes();
			speed_preapare_group.SetVisible(true);
		}
		else
		{
			this.speed_label_prepare.text = "Скорость";
			FillPrepareComboBox();
			speed_preapare_group.SetVisible(true);
		}
	}
	private function FillPrepareComboBox()
	{
		speed_combo_box_prepare.removeAll();
		speed_combo_box_prepare.addItem(new ValueData("",-1));
		speed_combo_box_prepare.addItem(new ValueData("48 кбит",ModeInfo.S_48));
		speed_combo_box_prepare.addItem(new ValueData("480 кбит",ModeInfo.S_480));
		speed_combo_box_prepare.addItem(new ValueData("2048 кбит",ModeInfo.S_2048));
	}
	private function PrepareComboBoxChange(e: Event)
	{
		start_group.SetVisible(false);
		this.SetVisibleScenarioInfo(true);
		this.txt_scenario_info.text = "";
		if ((speed_combo_box_prepare.selectedItem as ValueData).data!=-1)
		{
			start_group.SetVisible(true);
			if (ModeInfo.M_COMMUTATION == impuls_mode)
			{
				///TODO

				this.SetVisibleScenarioInfo(true);
				this.txt_scenario_info.text = scenario_infoes[(speed_combo_box_prepare.selectedItem as ValueData).data];
			}
			else
			{
				this.speed_mode=(speed_combo_box_prepare.selectedItem as ValueData).data;
			}
		}
	}
	private function SetStyleToRadioButtonsAndLabels()
	{
		var tf:TextFormat = new TextFormat();
		tf.size = 14;
		var i:int;
		for (i=0; i<main_mode_mas.length; i++)
		{
			main_mode_mas[i].setStyle("textFormat",tf);
		}
		for (i=0; i<mode_mas.length; i++)
		{
			mode_mas[i].setStyle("textFormat",tf);
		}
		for (i=0; i<cable_label.length; i++)
		{
			cable_label[i].setStyle("textFormat",tf);
		}
		start_button.setStyle("textFormat",tf);
		speed_combo_box_prepare.setStyle("textFormat",tf);
		tb_fio.setStyle("textFormat",tf);
		tb_num.setStyle("textFormat",tf);
		main_mode_2_l.setStyle("textFormat",tf);
		main_mode_3_l.setStyle("textFormat",tf);
		speed_label_prepare.setStyle("textFormat",tf);
		fio_label1.setStyle("textFormat",tf);
		fio_label2.setStyle("textFormat",tf);
	}
	private function StartButtonClick(e: MouseEvent)
	{
		
		if((t_tb_fio.text == "") && (this.main_mode == ModeInfo.MM_CONTROL)){
			(message_box as MessageBoxClass).InitializeMessageBox(null,"Поле «ФИО» обязательно для заполнения",this);
			return;
		}
		FillModeInfo();
		main_screen.info = ModeInfo.modeInfo;
		trace(main_screen.info);
		this.main_screen.InitializeGlobalScreen();
	}
	private function FillModeInfo()
	{
		if (ModeInfo.M_COMMUTATION == this.impuls_mode)
		{
			SaveScenario();
		}
		ModeInfo.modeInfo.fio = t_tb_fio.text;
		ModeInfo.modeInfo.vzv_num = t_tb_num.text;
		ModeInfo.modeInfo.MainMode = this.main_mode;
		ModeInfo.modeInfo.Mode = this.impuls_mode;
		ModeInfo.modeInfo.Speed = this.speed_mode;
		ModeInfo.modeInfo.LocalMode = this.local_mode;
		ModeInfo.modeInfo.scenario = (speed_combo_box_prepare.selectedItem as ValueData).data;
		ModeInfo.modeInfo.SetBlocks();
	}
	private function LoadScenarioInfoes()
	{
		///TODO: loading from file or ...

		speed_combo_box_prepare.removeAll();
		this.txt_scenario_info.text = "";
		speed_combo_box_prepare.addItem(new ValueData("", -1));
		
		

//1
speed_combo_box_prepare.addItem(new ValueData("Сценарий №1", 0));
scenario_infoes.push("Общестанционный режим: ОК-2\n"
+ "Скоростной режим: 480 кбит/с\n"
+ "Организовать передачу:\n "
+ "  - 1 канал тональной частоты (4-х пров) (используя 1-ю, 2-ю пары I-ого кабеля ПТРК-10х2 полукомплекта А)\n"
+ "  - 1 цифровой канала ЦК-48 (4-х пров) (используя 3-ю пару I-го кабеля ПТРК-10х2 и 4-ю пару II-го кабеля ПТРК-10х2 полукомплекта А)\n");
scenario_sequential_infoes.push(
"1"

+ "|2*1*0*1*0*0*0*"
+ "2x0x0xУстановите оконечный режим 1-го канала полукомплекта А"
+ ">2x0x1xУстановите оконечный режим 2-го канала полукомплекта А"
+ ">2x0x5xУстановите оконечный режим 6-го канала полукомплекта А"
+ ">2x4x0xСкомутируйте 1-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x2x0xСкомутируйте цифровой выход ИТ/ЦСС с 1-м каналом ИО-3А полукомплекта А"
+ ">2x5x0xСкомутируйте 2-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x7x0xСкомутируйте цифровой выход ИТ/ЦСС с 1-м каналом ИО-3Б полукомплекта А"
+ ">2x3x1xСкомутируйте 3-ю пару 1-го кабеля ПТРК-10х2 с 1-м каналом ИО-3А полукомплекта А"
+ ">2x6x5xСкомутируйте 4-ю пару 2-го кабеля ПТРК-10х2 с 1-м каналом ИО-3Б полукомплекта А"

+ "|0*0*0*0*0*0*0"

+ "|3>14");
		
//2
speed_combo_box_prepare.addItem(new ValueData("Сценарий №2",1));
scenario_infoes.push("Общестанционный режим: ОК-2\n"
+ "Скоростной режим: 2х480 кбит/с\n"
+ "Организовать передачу:\n"
+ "   - 1 канал тональной частоты (Используя 1-ю, 4-ю пары I-ого кабеля ПТРК-10х2, 1-ю, 2-ю, 7-ю пары II-го кабеля ПТРК-10х2"
+ " полукомплекта А, 2-ю, 3-ю, 6-ю пары I-го кабеля ПТРК-10х2 полукомплекта Б)\n"
+ "   - 6 цифровых канала ЦК-48 (Используя 2-ю пару I-го кабеля ПТРК-10х2, 3-ю пару II-го кабеля ПТРК-10х2 полукомплекта А, 8-ю, 9-ю пары I-го кабеля"
+ " ПТРК-10х2 полукомплекта Б)\n");
scenario_sequential_infoes.push(
"1"

+ "|7*1*3*1*0*0*0*"
+ "2x0x0xУстановите оконечный режим 1-го канала полукомплекта А"
+ ">2x0x1xУстановите оконечный режим 2-го канала полукомплекта А"
+ ">2x0x2xУстановите оконечный режим 3-го канала полукомплекта А"
+ ">2x0x3xУстановите оконечный режим 4-го канала полукомплекта А"
+ ">2x0x4xУстановите оконечный режим 5-го канала полукомплекта А"
+ ">2x0x5xУстановите оконечный режим 6-го канала полукомплекта А"
+ ">2x0x6xУстановите оконечный режим 7-го канала полукомплекта А"
+ ">2x4x0xСкомутируйте 1-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x2x0xСкомутируйте цифровой выход ИТ/А с 1-м каналом ИО-3А полукомплекта А"
+ ">2x4x1xСкомутируйте 3-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x2x1xСкомутируйте цифровой выход ИТ/А с 2-м каналом ИО-3А полукомплекта А"
+ ">2x5x1xСкомутируйте 4-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x7x1xСкомутируйте цифровой выход ИТ/А с 2-м каналом ИО-3Б полукомплекта А"
+ ">2x4x2xСкомутируйте 6-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x2x2xСкомутируйте цифровой выход ИТ/А с 3-м каналом ИО-3А полукомплекта А"
+ ">2x5x2xСкомутируйте 7-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x7x2xСкомутируйте цифровой выход ИТ/А с 3-м каналом ИО-3Б полукомплекта А"
+ ">2x4x3xСкомутируйте 8-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x2x3xСкомутируйте цифровой выход ИТ/А с 4-м каналом ИО-3А полукомплекта А"
+ ">2x4x4xСкомутируйте 1-ю пару 2-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x2x4xСкомутируйте цифровой выход ИТ/А с 5-м каналом ИО-3А полукомплекта А"
+ ">2x5x4xСкомутируйте 2-ю пару 2-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x7x4xСкомутируйте цифровой выход ИТ/А с 5-м каналом ИО-3Б полукомплекта А"
+ ">2x5x6xСкомутируйте 7-ю пару 2-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">2x7x6xСкомутируйте цифровой выход ИТ/А с 7-м каналом ИО-3Б полукомплекта А"
+ ">2x6x0xСкомутируйте 2-ю пару 1-го кабеля ПТРК-10х2 с 1-м каналом ИО-3Б полукомплекта А"
+ ">2x3x5xСкомутируйте 3-ю пару 2-го кабеля ПТРК-10х2 с 6-м каналом ИО-3А полукомплекта А"
+ ">2x5x3xСкомутируйте 9-ю пару 1-го кабеля ПТРК-10х2 полукомплекта А с аналоговым входом ИТ/А"
+ ">1x7x3xСоедините 2-х проводной перемычкой цифровой выход ИТ/А с 6-м каналом ИО-3Б полукомплекта А"
+ ">1x6x5xСоедините 2-х проводной перемычкой цифровой выход ИТ/А с 6-м каналом ИО-3Б полукомплекта А"

+ "|3*3*0*0*0*0*0*2x14x0xУстановите оконечный режим 1-го канала полукомплекта Б"
+ ">2x14x1xУстановите оконечный режим 2-го канала полукомплекта Б"
+ ">2x14x2xУстановите оконечный режим 3-го канала полукомплекта Б"
+ ">2x14x3xУстановите оконечный режим 4-го канала полукомплекта Б"
+ ">2x11x0xСкомутируйте 2-ю пару 1-го кабеля ПТРК-10х2 полукомплекта Б с аналоговым входом ИТ/А"
+ ">2x13x0xСкомутируйте цифровой выход ИТ/А с 1-м каналом ИО-3Б полукомплекта Б"
+ ">2x10x1xСкомутируйте 3-ю пару 1-го кабеля ПТРК-10х2 полукомплекта Б с аналоговым входом ИТ/А"
+ ">2x8x1xСкомутируйте цифровой выход ИТ/А с 2-м каналом ИО-3А полукомплекта Б"
+ ">2x10x2xСкомутируйте 6-ю пару 1-го кабеля ПТРК-10х2 полукомплекта Б с аналоговым входом ИТ/А"
+ ">2x8x2xСкомутируйте цифровой выход ИТ/А с 3-м каналом ИО-3А полукомплекта Б"
+ ">2x9x3xСкомутируйте 8-ю пару 1-го кабеля ПТРК-10х2 с 4-м каналом ИО-3А полукомплекта Б"
+ ">2x12x3xСкомутируйте 9-ю пару 1-го кабеля ПТРК-10х2 с 4-м каналом ИО-3Б полукомплекта Б"
+ ">1x13x2xСоедините 2-х проводной перемычкой 7-ю пару 1-го кабеля ПТРК-10х2 с 1-м каналом ИО-3А полукомплекта Б"
+ ">1x9x0xСоедините 2-х проводной перемычкой 7-ю пару 1-го кабеля ПТРК-10х2 с 1-м каналом ИО-3А полукомплекта Б"

+ "|3>13"
+ "*4>15");


	}
	private function SetVisibleScenarioInfo(val: Boolean)
	{
		this.txt_scenario_info.visible = val;
	}
	private function SaveScenario()
	{
		var parsedCommonInfo:Array;
		ModeInfo.modeInfo.SeqCommutation = new Array();
		ModeInfo.modeInfo.SeqLink = new Array();
		ModeInfo.modeInfo.scenarioDescription = scenario_infoes[(speed_combo_box_prepare.selectedItem as ValueData).data];
		
		parsedCommonInfo = scenario_sequential_infoes[(speed_combo_box_prepare.selectedItem as ValueData).data].split("|",4);
		this.local_mode = int(parsedCommonInfo[0]);

		var parsedComplectInfo:Array;
		parsedComplectInfo = parsedCommonInfo[1].split("*",100);
		ModeInfo.modeInfo.KtchChannels[0] = int(parsedComplectInfo[0]);
		ModeInfo.modeInfo.Czk86Channels[0] = int(parsedComplectInfo[1]);
		ModeInfo.modeInfo.KtchChannels[1] = int(parsedComplectInfo[2]);
		ModeInfo.modeInfo.Czk86Channels[1] = int(parsedComplectInfo[3]);
		ModeInfo.modeInfo.KtchChannels[2] = int(parsedComplectInfo[4]);
		ModeInfo.modeInfo.Czk86Channels[2] = int(parsedComplectInfo[5]);
		ModeInfo.modeInfo.P296n1 = int(parsedComplectInfo[6]);
		
		var parsedStepsInfo:Array;
		var i:int;
		for(i = 7; i < parsedComplectInfo.length; i++)
		{
			parsedStepsInfo = parsedComplectInfo[i].split(">", 100)
			ModeInfo.modeInfo.SeqCommutation.push(parsedStepsInfo);
		}

		parsedComplectInfo = parsedCommonInfo[2].split("*",100);
		ModeInfo.modeInfo.KtchChannels[3] = int(parsedComplectInfo[0]);
		ModeInfo.modeInfo.Czk86Channels[3] = int(parsedComplectInfo[1]);
		ModeInfo.modeInfo.KtchChannels[4] = int(parsedComplectInfo[2]);
		ModeInfo.modeInfo.Czk86Channels[4] = int(parsedComplectInfo[3]);
		ModeInfo.modeInfo.KtchChannels[5] = int(parsedComplectInfo[4]);
		ModeInfo.modeInfo.Czk86Channels[5] = int(parsedComplectInfo[5]);
		ModeInfo.modeInfo.P296n2 = int(parsedComplectInfo[6]);
		
		for(i = 7; i < parsedComplectInfo.length; i++)
		{
			parsedStepsInfo = parsedComplectInfo[i].split(">", 100);
			ModeInfo.modeInfo.SeqCommutation.push(parsedStepsInfo);
		}
		
		
		var parsedLinkInfo:Array;
		parsedLinkInfo = parsedCommonInfo[3].split("*",100);
		
		for(i = 0; i < parsedLinkInfo.length; i++){
			ModeInfo.modeInfo.SeqLink.push(parsedLinkInfo[i].split(">",100));
		}

	}
}
}