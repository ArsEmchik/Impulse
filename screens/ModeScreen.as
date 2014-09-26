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

	public dynamic class ModeScreen extends MovieClip {;

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
	var local_mode_mas: Vector.<RadioButton> = new Vector.<RadioButton>();// ок1...
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
	var local_mode_group:ComponentGroup;
	var speed_group:ComponentGroup;
	var channel_group:ComponentGroup;
	var cable_group:ComponentGroup;
	var fio_group:ComponentGroup;
	var start_group:ComponentGroup;
	var speed_preapare_group:ComponentGroup;
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
		local_mode_mas.push(local_mode_1);
		local_mode_mas.push(local_mode_2);
		local_mode_mas.push(local_mode_3);
		local_mode_mas.push(local_mode_4);
		local_mode_mas.push(local_mode_5);
		local_mode_mas.push(local_mode_6);
		speed_combo_box = t_speed_combo_box;
		speed_combo_box_prepare = t_speed_combo_box_prepare;
		channel_slider = t_channel_slider;
		start_button = t_start_button;
		cable1_zk.push(cable11_zkb);
		cable1_zk.push(cable12_zk);
		cable1_zk.push(cable13_zkb);
		cable2_zk.push(cable21_zk);
		cable2_zk.push(cable22_zk);
		cable2_zk.push(cable23_zk);
		radiobuttons1.push(comp0);
		radiobuttons1.push(comp1);
		radiobuttons1.push(comp2);
		radiobuttons2.push(comp5);
		radiobuttons2.push(comp3);
		radiobuttons2.push(comp4);
		cable1_ktch.push(cable11_ktch);
		cable1_ktch.push(cable12_ktch);
		cable1_ktch.push(cable13_ktch);
		cable2_ktch.push(cable21_ktch);
		cable2_ktch.push(cable22_ktch);
		cable2_ktch.push(cable23_ktch);
		cable_label.push(l1);
		cable_label.push(l2);
		cable_label.push(l3);
		cable_label.push(l4);
		cable_label.push(l5);
		cable_label.push(l6);
		//cable_label.push(l7);
		//cable_label.push(l8);
		cable_label.push(l10);
		//cable_label.push(l11);
		//cable_label.push(l12);
		cable_label.push(l14);
		cable_label.push(l15);
		cable_label.push(l16);
		cable_label.push(l17);
		cable_label.push(l18);
		//cable_label.push(l19);
		//cable_label.push(l20);
		cable_label.push(l22);
		cable_label.push(l23);
		//cable_label.push(l24);
		//cable_label.push(l25);
		channel_count = t_channel_count;
		tb_fio = t_tb_fio;
		tb_num = t_tb_num;
		SetGroups();
		SetEvents();
		SetStyleToRadioButtonsAndLabels();
		InitializeStartStepperValues();
	}
	public function InitializeStartModeScreen(p_main_screen: MainScreen)
	{
		main_screen = p_main_screen;
	}
	private function SetGroups()
	{
		var speed_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		speed_group_mas.push(t_speed_combo_box,speed_label,t_speed_combo_box_2,speed_label_2);
		var channel_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		channel_group_mas.push(t_channel_count,channel_label1,/*channel_label2,*/t_channel_slider,channel_label3,channel_label4);
		var fio_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		fio_group_mas.push(tb_fio,tb_num,fio_label1,fio_label2);
		var start_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		start_group_mas.push(start_button);
		var prepare_group_mas: Vector.<DisplayObject> = new Vector.<DisplayObject>();
		prepare_group_mas.push(this.speed_combo_box_prepare,speed_label_prepare);
		main_mode_group = new ComponentGroup(this,(new Vector.<DisplayObject>()).concat(main_mode_mas));
		mode_mas_group = new ComponentGroup(this,(new Vector.<DisplayObject>()).concat(mode_mas));
		local_mode_group = new ComponentGroup(this,(new Vector.<DisplayObject>()).concat(local_mode_mas));
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
		for (i=0; i<local_mode_mas.length; i++)
		{
			local_mode_mas[i].addEventListener(MouseEvent.CLICK,LocalModeRadioButton);
		}
		for (i=0; i<this.radiobuttons1.length; i++)
		{
			this.radiobuttons1[i].addEventListener(MouseEvent.CLICK,P296Click);
		}
		for (i=0; i<this.radiobuttons2.length; i++)
		{
			this.radiobuttons2[i].addEventListener(MouseEvent.CLICK,P296Click2);
		}
		speed_combo_box.addEventListener(Event.CHANGE,ComboBoxChange);
		speed_combo_box_prepare.addEventListener(Event.CHANGE,PrepareComboBoxChange);
		channel_count.addEventListener(Event.CHANGE,ChannelCountChange);
		channel_slider.addEventListener(Event.CHANGE,ChannelSliderChange);
		this.start_button.addEventListener(MouseEvent.MOUSE_UP,StartButtonClick);
	}
	private function P296Click(e: MouseEvent)
	{

	}
	private function P296Click2(e: MouseEvent)
	{

	}
	private function MainModeRadioButton(e: MouseEvent)
	{
		var i:int;
		var r_button: RadioButton = (e.target as RadioButton);
		RadioButtonCheck(r_button);
		for (i=0; i<main_mode_mas.length; i++)
		{
			if (r_button==main_mode_mas[i])
			{
				break;
			}
		}
		main_mode = i;
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(mode_mas_group,local_mode_group,speed_group,channel_group,cable_group,fio_group,start_group,speed_preapare_group);
		ClearGroups(clear_groups);
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
		if (r_button==null)
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
			if (r_button==mode_mas[i])
			{
				break;
			}
		}
		impuls_mode = i;
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(local_mode_group,speed_group,channel_group,cable_group,start_group,speed_preapare_group);
		ClearGroups(clear_groups);
		if (this.main_mode == ModeInfo.MM_CONTROL)
		{
			fio_group.SetVisible(true);
			start_group.SetVisible(true);
			GenerateRandomMode();
			return;
		}
		if (ModeInfo.M_COMMUTATION == impuls_mode)
		{
			local_mode_group.SetVisible(true);
			local_mode_0.selected = true;
		}
		else
		{
			FillPrepareComboBox();
			speed_preapare_group.SetVisible(true);
		}
	}
	private function LocalModeRadioButton(e: MouseEvent)
	{
		var i:int;
		var r_button: RadioButton = (e.target as RadioButton);
		RadioButtonCheck(r_button);
		for (i=1; i<local_mode_mas.length; i++)
		{
			if (r_button==local_mode_mas[i])
			{
				break;
			}
		}
		local_mode = i;
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(speed_group,channel_group,cable_group,start_group,speed_preapare_group);
		ClearGroups(clear_groups);
		speed_group.SetVisible(true);
		if (local_mode==ModeInfo.L_OK2 || local_mode==ModeInfo.L_RETR2 || local_mode==ModeInfo.L_UZL2)
		{
			this.removeChild(speed_label_2);
			this.removeChild(t_speed_combo_box_2);
		}
		FillComboBox(local_mode,speed_combo_box);
		FillComboBox(local_mode,t_speed_combo_box_2);
	}
	private function FillComboBox(t_local_mode: int, comboBox: ComboBox)
	{
		comboBox.removeAll();
		comboBox.addItem(new ValueData("",-1));
		if (t_local_mode!=ModeInfo.L_UZL1 && t_local_mode!=ModeInfo.L_UZL2)
		{
			comboBox.addItem(new ValueData("48 кбит",ModeInfo.S_48));
		}
		comboBox.addItem(new ValueData("480 кбит",ModeInfo.S_480));
		comboBox.addItem(new ValueData("480x2 кбит",ModeInfo.S_480x2));
		if (t_local_mode!=ModeInfo.L_UZL1)
		{
			comboBox.addItem(new ValueData("2048 кбит",ModeInfo.S_2048));
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
		if ((speed_combo_box_prepare.selectedItem as ValueData).data!=-1)
		{
			start_group.SetVisible(true);
			this.speed_mode=(speed_combo_box_prepare.selectedItem as ValueData).data;
		}
	}
	private function ComboBoxChange(e: Event)
	{
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(channel_group,cable_group,start_group,speed_preapare_group);
		ClearGroups(clear_groups);
		if ((speed_combo_box.selectedItem as ValueData).data!=-1)
		{
			var max_channel_count:int = 0;
			switch ((speed_combo_box.selectedItem as ValueData).data)
			{
				case ModeInfo.S_48 :
					max_channel_count = 1;
					this.speed_mode = ModeInfo.S_48;
					EnableP296Radiobuttons(false);
					break;
				case ModeInfo.S_480 :
					max_channel_count = 9;
					this.speed_mode = ModeInfo.S_480;
					EnableP296Radiobuttons(true);
					break;
				case ModeInfo.S_480x2 :
					max_channel_count = 18;
					this.speed_mode = ModeInfo.S_480x2;
					EnableP296Radiobuttons(true);
					break;
				case ModeInfo.S_2048 :
					max_channel_count = 36;
					this.speed_mode = ModeInfo.S_2048;
					EnableP296Radiobuttons(true,true);
					break;
			}
			channel_group.SetVisible(true);
			channel_count.value = 0;
			channel_count.minimum = 0;
			channel_count.maximum = max_channel_count;
			channel_slider.minimum = 0;
			channel_slider.maximum = 0;
			channel_slider.value = 0;
			channel_label3.text = "ЦК-48 (0)";
			channel_label4.text = "КТЧ (0)";
		}
	}
	private function ChannelCountChange(e: Event)
	{
		var clear_groups: Vector.<ComponentGroup> = new Vector.<ComponentGroup>();
		clear_groups.push(cable_group,start_group);
		ClearGroups(clear_groups);
		channel_slider.maximum = e.target.value;
		channel_slider.value = 0;
		channel_label3.text = "ЦК-48 (0)";
		channel_label4.text = "КТЧ (" + e.target.value + ")";
		this.zk_count = 0;
		this.ktch_count = e.target.value;
		if (e.target.value != 0)
		{
			SetStepperValues(0,e.target.value);
			cable_group.SetVisible(true);
		}
	}
	private function ChannelSliderChange(e: Event)
	{
		SetStepperValues(e.target.value,channel_slider.maximum-e.target.value);
		channel_label3.text = "ЦК-48 (" + e.target.value.toString() + ")";
		channel_label4.text = "КТЧ ("+(channel_slider.maximum-e.target.value).toString()+")";
		trace("mi",e.target.value,channel_slider.maximum-e.target.value);
		this.zk_count = e.target.value;
		this.ktch_count = channel_slider.maximum - e.target.value;
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
		for (i=0; i<local_mode_mas.length; i++)
		{
			local_mode_mas[i].setStyle("textFormat",tf);
		}
		for (i=0; i<cable_label.length; i++)
		{
			cable_label[i].setStyle("textFormat",tf);
		}
		start_button.setStyle("textFormat",tf);
		speed_combo_box.setStyle("textFormat",tf);
		speed_combo_box_prepare.setStyle("textFormat",tf);
		channel_slider.setStyle("textFormat",tf);
		tb_fio.setStyle("textFormat",tf);
		tb_num.setStyle("textFormat",tf);
		speed_label.setStyle("textFormat",tf);
		speed_label_2.setStyle("textFormat",tf);
		main_mode_2_l.setStyle("textFormat",tf);
		main_mode_3_l.setStyle("textFormat",tf);
		speed_label_prepare.setStyle("textFormat",tf);
		channel_label1.setStyle("textFormat",tf);
		//channel_label2.setStyle("textFormat",tf);
		channel_label3.setStyle("textFormat",tf);
		channel_label4.setStyle("textFormat",tf);
		fio_label1.setStyle("textFormat",tf);
		fio_label2.setStyle("textFormat",tf);
	}
	private function EnableP296Radiobuttons(newEnable: Boolean, with_2048: Boolean=false)
	{
		var i:int;
		for (i=0; i<this.radiobuttons1.length; i++)
		{
			this.radiobuttons1[i].enabled = newEnable;
		}
		for (i=0; i<this.radiobuttons2.length; i++)
		{
			this.radiobuttons2[i].enabled = newEnable;
		}
		this.radiobuttons1[0].selected = true;
		this.radiobuttons2[0].selected = true;
		if (! with_2048)
		{
			this.radiobuttons1[2].enabled = false;
			this.radiobuttons2[2].enabled = false;
		}
	}
	private function InitializeSteppersToZero()
	{
		var i:int;
		for (i=0; i<cable1_zk.length; i++)
		{
			cable1_zk[i].value = 0;
		}
		for (i=0; i<cable2_zk.length; i++)
		{
			cable2_zk[i].value = 0;
		}
		for (i=0; i<cable1_ktch.length; i++)
		{
			cable1_ktch[i].value = 0;
		}
		for (i=0; i<cable2_ktch.length; i++)
		{
			cable2_ktch[i].value = 0;
		}
	}
	private function InitializeStartStepperValues()
	{
		var i:int;
		for (i=0; i<cable1_zk.length; i++)
		{
			cable1_zk[i].maximum = 4;
			cable1_zk[i].minimum = 0;
		}
		for (i=0; i<cable2_zk.length; i++)
		{
			cable2_zk[i].maximum = 4;
			cable2_zk[i].minimum = 0;
		}
		for (i=0; i<cable1_ktch.length; i++)
		{
			cable1_ktch[i].maximum = 4;
			cable1_ktch[i].minimum = 0;
		}
		for (i=0; i<cable2_ktch.length; i++)
		{
			cable2_ktch[i].maximum = 4;
			cable2_ktch[i].minimum = 0;
		}
	}
	private function SetStepperValues(zk: int, ktch: int)
	{
		InitializeSteppersToZero();
		if (this.speed_mode == ModeInfo.S_2048)
		{
			return;
		}
		var i:int;
		var sub:int = 0;
		var min:int;
		var cable_mas_zk: Vector.<NumericStepper> = new Vector.<NumericStepper>();
		var cable_mas_ktch: Vector.<NumericStepper> = new Vector.<NumericStepper>();
		cable_mas_zk.push(this.cable1_zk[0],this.cable1_zk[1],this.cable1_zk[2],
		   this.cable2_zk[0],this.cable2_zk[1],this.cable2_zk[2]);
		cable_mas_ktch.push(this.cable1_ktch[0],this.cable1_ktch[1],this.cable1_ktch[2],
		  this.cable2_ktch[0],this.cable2_ktch[1],this.cable2_ktch[2]);
		for (i=0; i<cable_mas_zk.length; i++)
		{
			if (zk>=4)
			{
				sub = 4;
			}
			else
			{
				sub = zk;
			}
			cable_mas_zk[i].value = sub;
			zk -=  sub;
			if (zk==0)
			{
				break;
			}
		}
		for (i=0; i<cable_mas_ktch.length; i++)
		{
			min = 4 - cable_mas_zk[i].value;
			if (ktch>=min)
			{
				sub = min;
			}
			else
			{
				sub = ktch;
			}
			ktch -=  sub;
			cable_mas_ktch[i].value = sub;
			if (ktch==0)
			{
				break;
			}
		}
	}
	private function StartButtonClick(e: MouseEvent)
	{
		if (ModeInfo.M_COMMUTATION == this.impuls_mode && ! TestChannelCount())
		{
			(message_box as MessageBoxClass).InitializeMessageBox(null,"Некорректно определено количество каналов",this);
			return;
		}
		FillModeInfo();
		main_screen.info = ModeInfo.modeInfo;
		trace(main_screen.info);
		this.main_screen.InitializeGlobalScreen();
	}
	private function TestChannelCount()
	{
		var i:int;
		var zk_sum:int = 0;
		var ktch_sum:int = 0;
		for (i=0; i<3; i++)
		{
			if (this.cable1_zk[i].value + this.cable1_ktch[i].value > 4)
			{
				return false;
			}
			if (this.cable2_zk[i].value + this.cable2_ktch[i].value > 4)
			{
				return false;
			}
			zk_sum +=  this.cable1_zk[i].value + this.cable2_zk[i].value;
			ktch_sum +=  this.cable1_ktch[i].value + this.cable2_ktch[i].value;
		}
		trace(zk_sum,zk_count,ktch_sum,ktch_count);
		if (zk_sum!=this.zk_count || ktch_sum!=this.ktch_count)
		{
			return (false);
		}
		return true;
	}
	private function FillModeInfo()
	{
		ModeInfo.modeInfo.MainMode = this.main_mode;
		ModeInfo.modeInfo.Mode = this.impuls_mode;
		ModeInfo.modeInfo.Speed = this.speed_mode;
		ModeInfo.modeInfo.LocalMode = this.local_mode;
		ModeInfo.modeInfo.ChannelCount = this.channel_count.value;
		ModeInfo.modeInfo.KtchCount = this.ktch_count;
		ModeInfo.modeInfo.Czk48Count = this.zk_count;
		ModeInfo.modeInfo.Czk86Channels = new Vector.<int>();
		ModeInfo.modeInfo.KtchChannels = new Vector.<int>();
		var i:int;
		for (i=0; i<this.cable1_ktch.length; i++)
		{
			ModeInfo.modeInfo.KtchChannels.push(this.cable1_ktch[i].value);
		}
		for (i=0; i<this.cable2_ktch.length; i++)
		{
			ModeInfo.modeInfo.KtchChannels.push(this.cable2_ktch[i].value);
		}
		for (i=0; i<this.cable1_zk.length; i++)
		{
			ModeInfo.modeInfo.Czk86Channels.push(this.cable1_zk[i].value);
		}
		for (i=0; i<this.cable2_zk.length; i++)
		{
			ModeInfo.modeInfo.Czk86Channels.push(this.cable2_zk[i].value);
		}
		for (i=0; i<this.radiobuttons1.length; i++)
		{
			if (this.radiobuttons1[i].selected)
			{
				ModeInfo.modeInfo.P296n1 = i;
			}
		}
		for (i=0; i<this.radiobuttons2.length; i++)
		{
			if (this.radiobuttons2[i].selected)
			{
				ModeInfo.modeInfo.P296n2 = i;
			}
		}
		ModeInfo.modeInfo.SetBlocks();
	}
	private function GenerateRandomMode()
	{
		switch (this.impuls_mode)
		{
			case ModeInfo.M_PREPARING :
			case ModeInfo.M_WORKING :
				SetSpeed();
				break;
			case ModeInfo.M_COMMUTATION :
				SetRandomCommutation();
				break;
			default :
				throw new Error;
		}
	}
	private function SetSpeed()
	{
		var speedVector: Vector.<int> = new Vector.<int>();
		speedVector.push(ModeInfo.S_48,ModeInfo.S_480,ModeInfo.S_2048);
		this.speed_mode = ModeInfo.S_2048;
		//this.speed_mode = speedVector[(int)(speedVector.length*Math.random())];
	}
	private function SetRandomCommutation()
	{
		//need to be real random
		this.speed_mode = ModeInfo.S_480;
		this.local_mode = ModeInfo.L_OK1;
		this.channel_count.value = 4;
		this.ktch_count = 2;
		this.zk_count = 2;
		var i:int;
		for (i=0; i<this.cable1_ktch.length; i++)
		{
			this.cable1_ktch[i].value = 0;
		}
		for (i=0; i<this.cable2_ktch.length; i++)
		{
			this.cable2_ktch[i].value = 0;
		}
		for (i=0; i<this.cable1_zk.length; i++)
		{
			this.cable1_zk[i].value = 0;
		}
		for (i=0; i<this.cable2_zk.length; i++)
		{
			this.cable2_zk[i].value = 0;
		}
		this.cable1_ktch[0].value = 1;
		this.cable1_ktch[1].value = 1;
		this.cable1_zk[0].value = 1;
		this.cable1_zk[2].value = 1;
		trace(cable1_ktch);
		trace(cable1_zk);
	}
}
}