package screens
{
	import blocks.ModeInfo;
	import buttons.ButtonClass;
	import fl.controls.Button;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class GlobalScreen extends MovieClip
	{
		public var errorArea: ErrorArea;
		public var block_ita: ITAImage;
		public var block_ip: IPImage;
		public var block_is: ISImage;
		public var block_io3a: IO3AImage;
		public var block_il34: IL34Image;
		public var block_io4: IO4Image;
		public var block_d0031: D0034Image;
		public var block_io3a2: IO3AImage;
		public var block_il342: IL34Image;
		public var block_io42: IO4Image;
		public var block_d39: D39Image;
		public var input_block: InputShield;
		public var errorButton: Button;
		public var exitButton: Button;
		public var text_field: TextField;
		public var errorCount: TextField;
		
		private var main_screen: MainScreen;
		private var blockButtons: Vector.<ButtonClass>;
		private var addedErrorMessage: Boolean = false;
		
		public function GlobalScreen()
		{
			errorArea.visible = false;
			blockButtons = new Vector.<ButtonClass>();
			blockButtons.push(block_ip, block_io4, block_io3a, block_ita, block_is, block_il34, block_io3a2, block_io42, block_il342, block_d39, block_d0031, input_block);
			block_ip.AddOverFun(SetMessage, "Блок ИП");
			block_is.AddOverFun(SetMessage, "Блок ИС");
			block_ita.AddOverFun(SetMessage, "Блок ИТ/А");
			block_io3a.AddOverFun(SetMessage, "ИО-3А + ИО-3Б");
			block_il34.AddOverFun(SetMessage, "Блок ИЛ-34");
			block_io4.AddOverFun(SetMessage, "Блок ИО-4");
			block_io3a2.AddOverFun(SetMessage, "ИО-3А + ИО-3Б(2)");
			block_il342.AddOverFun(SetMessage, "Блок ИЛ-34(2)");
			block_io42.AddOverFun(SetMessage, "Блок ИО-4(2)");
			block_d0031.AddOverFun(SetMessage, "Блок Д-00-31");
			block_d39.AddOverFun(SetMessage, "Блок Д-39");
			input_block.AddOverFun(SetMessage, "Вводный щит");
		}
		
		public function InitializeGlobalScreen(p_main_screen:MainScreen)
		{
			main_screen = p_main_screen;
			SetupBlocks();
			SetErrorCount();
			exitButton.addEventListener(MouseEvent.CLICK, ExitBTNClick);
		}
		
		public function SetMessage(text_message:String)
		{
			text_field.text = text_message;
		}
		
		private function ExitBTNClick(e:MouseEvent)
		{
			main_screen.InitializeFinalScreen();
		}
		
		private function SetupBlocks()
		{
			exitButton.visible = false;
			var count:int = 0;
			for (var i:int = 0; i < blockButtons.length; i++)
			{
				if (ModeInfo.modeInfo.blockInfo[i] != null && !ModeInfo.modeInfo.blockInfo[i].blockDone)
				{
					if (ModeInfo.modeInfo.MainMode == ModeInfo.MM_INSTRUCTION)
					{
						if (ModeInfo.modeInfo.blockSeqIndex == -1)
						{
							blockButtons[i].addEventListener(MouseEvent.MOUSE_UP, GoToScreen);
						}
						else if (i == ModeInfo.modeInfo.blockTrainSeq[ModeInfo.modeInfo.blockSeqIndex])
						{
							blockButtons[i].addEventListener(MouseEvent.MOUSE_UP, GoToScreen);
							blockButtons[ModeInfo.modeInfo.blockTrainSeq[ModeInfo.modeInfo.blockSeqIndex]].HasGlow = true;
						}
					}
					else
					{
						blockButtons[i].addEventListener(MouseEvent.MOUSE_UP, GoToScreen);
					}
					count++;
				}
				else
					blockButtons[i].Block();
			}
			
			if (count == 0)
			{
				exitButton.visible = true;
			}
		}
		
		private function GoToScreen(e:MouseEvent)
		{
			var i:int;
			for (i = 0; i < blockButtons.length; i++)
			{
				if (e.currentTarget == blockButtons[i])
					break;
			}
			
			if (blockButtons[i].IsBlocked())
				return;
				
			ModeInfo.modeInfo.blockInfo[i].blockDone = true;
			ModeInfo.modeInfo.currentBlock = i;
			switch (i)
			{
				case ModeInfo.BLOCK_D_00_01: 
					ModeInfo.modeInfo.blockName = "Блок D-00-01";
					main_screen.InitializeD00Screen();
					break;
				case ModeInfo.BLOCK_D_39: 
					ModeInfo.modeInfo.blockName = "Блок D-39";
					main_screen.InitializeD39Block();
					break;
				case ModeInfo.BLOCK_IL34: 
					ModeInfo.modeInfo.blockName = "Блок ИЛ-3/4";
					main_screen.InitializeIL34Screen();
					break;
				case ModeInfo.BLOCK_IL34_2: 
					ModeInfo.modeInfo.blockName = "Блок ИЛ-3/4(2)";
					main_screen.InitializeIL34Screen();
					break;
				case ModeInfo.BLOCK_INPUT: 
					ModeInfo.modeInfo.blockName = "Вводный щит";
					main_screen.InitializeInputBlock();
					break;
				case ModeInfo.BLOCK_IO3A: 
					ModeInfo.modeInfo.blockName = "Блок ИО-3A";
					main_screen.InitializeIO3AScreen();
					break;
				case ModeInfo.BLOCK_IO3A_2: 
					ModeInfo.modeInfo.blockName = "Блок ИО-3A(2)";
					main_screen.InitializeIO3AScreen();
					break;
				case ModeInfo.BLOCK_IO4: 
					ModeInfo.modeInfo.blockName = "Блок ИО-4";
					main_screen.InitializeIO4Screen();
					break;
				case ModeInfo.BLOCK_IO4_2: 
					ModeInfo.modeInfo.blockName = "Блок ИО-4(2)";
					main_screen.InitializeIO4Screen();
					break;
				case ModeInfo.BLOCK_IP: 
					ModeInfo.modeInfo.blockName = "Блок ИП";
					main_screen.InitializeIPScreen();
					break;
				case ModeInfo.BLOCK_IS: 
					ModeInfo.modeInfo.blockName = "Блок ИС";
					main_screen.InitializeISScreen();
					break;
				case ModeInfo.BLOCK_ITA: 
					ModeInfo.modeInfo.blockName = "Блок ИТА";
					main_screen.InitializeITAScreen();
					break;
				default: 
					throw new Error("Некоректный блок");
			}
		}
		
		private function SetErrorCount()
		{
			var count:int = 0;
			if (ModeInfo.modeInfo.MainMode == ModeInfo.MM_CONTROL)
			{
				for (var i:int = 0; i < ModeInfo.modeInfo.blockInfo.length; i++)
				{
					if (ModeInfo.modeInfo.blockInfo[i] != null)
						count += ModeInfo.modeInfo.blockInfo[i].errorCount;
				}
				errorArea.text.text = ModeInfo.modeInfo.errorText;
				errorCount.text = "Количество ошибок: " + count.toString();
				ModeInfo.modeInfo.error_count_summary = count;
				errorButton.addEventListener(MouseEvent.CLICK, ShowErrors);
				
			}
			else
				errorButton.visible = false;
		}
		
		private function ShowErrors(e:MouseEvent)
		{
			addedErrorMessage = !addedErrorMessage;
			if (addedErrorMessage)
			{
				(errorButton as Button).label = "Убрать окно";
				errorArea.visible = true;
			}
			else
			{
				(errorButton as Button).label = "Ошибки";
				errorArea.visible = false;
			}
		}
	}
}
