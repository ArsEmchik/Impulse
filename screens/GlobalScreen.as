package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import blocks.ModeInfo;
	import buttons.ButtonClass;
	import fl.controls.Button;
	
	
	public class GlobalScreen extends MovieClip {
		
		var main_screen: MainScreen;
		var modeInfo: ModeInfo;
		var blockButtons: Vector.<ButtonClass>;
		var addedErrorMessage: Boolean=false;
		
		public function GlobalScreen() 
		{
			errorArea.visible=false;
			blockButtons = new Vector.<ButtonClass>();
			blockButtons.push(block_ip,block_io4,block_io3a,block_ita,block_is,block_il34,block_io3a2,block_io42,block_il342,block_d39,block_d0031,input_block);
			block_ip.AddOverFun(SetMessage,"Блок ИП");
			block_is.AddOverFun(SetMessage,"Блок ИС");
			block_ita.AddOverFun(SetMessage,"Блок ИТ/А");
			block_io3a.AddOverFun(SetMessage,"ИО-3А + ИО-3Б");
			block_il34.AddOverFun(SetMessage,"Блок ИЛ-34");
			block_io4.AddOverFun(SetMessage,"Блок ИО-4");
			block_io3a2.AddOverFun(SetMessage,"ИО-3А + ИО-3Б(2)");
			block_il342.AddOverFun(SetMessage,"Блок ИЛ-34(2)");
			block_io42.AddOverFun(SetMessage,"Блок ИО-4(2)");
			block_d0031.AddOverFun(SetMessage,"Блок Д-00-31");
			block_d39.AddOverFun(SetMessage,"Блок Д-39");
			input_block.AddOverFun(SetMessage,"Вводный щит");
			// constructor code
		}
		public function InitializeGlobalScreen(p_main_screen: MainScreen)
		{
			modeInfo = ModeInfo.modeInfo;
			main_screen=p_main_screen;
			modeInfo.TraceModeInfo();	
			AddMouseUp();
			SetErrorCount();
		}
		public function SetMessage(text_message: String)
		{
			text_field.text = text_message;
		}
		public function InitializeMouseUp()
		{
			block_ip.addEventListener(MouseEvent.MOUSE_UP,GlobalScreenUp);
		}
		public function GlobalScreenUp(e: MouseEvent)
		{
			
		}
		private function AddMouseUp()
		{
			var i: int;
			var count: int=0;
			trace(modeInfo.blockInfo);
			for (i=0; i<blockButtons.length; i++)
			{
				if (modeInfo.blockInfo[i]!=null && !modeInfo.blockInfo[i].blockDone)
				{
					blockButtons[i].addEventListener(MouseEvent.MOUSE_UP,GoToScreen);
					count++;
				}
				else blockButtons[i].Block();
			}
			if (count==0)
				main_screen.InitializeFinalScreen();
		}
		public function GoToScreen(e: MouseEvent)
		{
			var i: int;
			for (i=0; i<blockButtons.length; i++)
			{
				if (e.currentTarget == blockButtons[i])
					break;
			}
			if (blockButtons[i].IsBlocked())
				return;
			this.modeInfo.blockInfo[i].blockDone=true;
			this.modeInfo.currentBlock=i;
			switch(i)
			{
				case ModeInfo.BLOCK_D_00_01:
					this.modeInfo.blockName="Блок D-00-01";
					main_screen.InitializeD00Screen();
					break;
				case ModeInfo.BLOCK_D_39:
					this.modeInfo.blockName="Блок D-39";
					main_screen.InitializeD39Block();
					break;
				case ModeInfo.BLOCK_IL34:
					this.modeInfo.blockName="Блок ИЛ-3/4";
					main_screen.InitializeIL34Screen();
					break;
				case ModeInfo.BLOCK_IL34_2:
					this.modeInfo.blockName="Блок ИЛ-3/4(2)";
					main_screen.InitializeIL34Screen();
					break;
				case ModeInfo.BLOCK_INPUT:
					this.modeInfo.blockName="Вводный щит";
					main_screen.InitializeInputBlock();
					break;
				case ModeInfo.BLOCK_IO3A:
					this.modeInfo.blockName="Блок ИО-3A";
					main_screen.InitializeIO3AScreen();
					break;				
				case ModeInfo.BLOCK_IO3A_2:
					this.modeInfo.blockName="Блок ИО-3A(2)";
					main_screen.InitializeIO3AScreen();
					break;
				case ModeInfo.BLOCK_IO4:
					this.modeInfo.blockName="Блок ИО-4";
					main_screen.InitializeIO4Screen();
					break;
				case ModeInfo.BLOCK_IO4_2:
					this.modeInfo.blockName="Блок ИО-4(2)";
					main_screen.InitializeIO4Screen();
					break;
				case ModeInfo.BLOCK_IP:
					this.modeInfo.blockName="Блок ИП";
					main_screen.InitializeIPScreen();
					break;
				case ModeInfo.BLOCK_IS:
					this.modeInfo.blockName="Блок ИС";
					main_screen.InitializeISScreen();
					break;
				case ModeInfo.BLOCK_ITA:
					this.modeInfo.blockName="Блок ИТА";
					main_screen.InitializeITAScreen();
					break;
				default: throw new Error("Некоректный блок");
			}
		}
		private function SetErrorCount()
		{
			var i: int;
			var count: int=0;
			if (ModeInfo.modeInfo.MainMode==ModeInfo.MM_CONTROL)
			{
				for (i=0; i<ModeInfo.modeInfo.blockInfo.length; i++)
				{
					if (ModeInfo.modeInfo.blockInfo[i]!=null)
						count+=ModeInfo.modeInfo.blockInfo[i].errorCount;
				}
				errorArea.text.text = ModeInfo.modeInfo.errorText;
				errorCount.text = "Количество ошибок: "+count.toString();
				errorButton.addEventListener(MouseEvent.CLICK,ShowErrors);
				
			} else errorButton.visible=false;
		}
		private function ShowErrors(e: MouseEvent)
		{
			addedErrorMessage = !addedErrorMessage;
			if (addedErrorMessage)
			{
				(errorButton as Button).label = "Убрать окно";
				errorArea.visible=true;
			}
			else
			{
				(errorButton as Button).label = "Ошибки";
				errorArea.visible=false;
			}
		}
	}	
}
