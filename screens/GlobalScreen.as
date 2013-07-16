package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import blocks.ModeInfo;
	import buttons.ButtonClass;
	
	
	public class GlobalScreen extends MovieClip {
		
		var main_screen: MainScreen;
		var modeInfo: ModeInfo;
		var blockButtons: Vector.<ButtonClass>;
		
		public function GlobalScreen() 
		{
			blockButtons = new Vector.<ButtonClass>();
			blockButtons.push(block_ip,block_io4,block_io3a,block_ita,block_is,block_il34,block_io3a2,block_io42,block_il342,block_d39,block_d0031,input_block);
			block_ip.AddOverFun(SetMessage,"Блок ИП");
			block_is.AddOverFun(SetMessage,"Блок ИС");
			block_ita.AddOverFun(SetMessage,"Блок ИТ/А");
			block_io3a.AddOverFun(SetMessage,"ИО-3А + ИО-3Б");
			block_il34.AddOverFun(SetMessage,"Блок ИО34");
			block_io4.AddOverFun(SetMessage,"Блок ИО-4");
			block_io3a2.AddOverFun(SetMessage,"ИО-3А + ИО-3Б(2)");
			block_il342.AddOverFun(SetMessage,"Блок ИО34(2)");
			block_io42.AddOverFun(SetMessage,"Блок ИО-4(2)");
			block_d0031.AddOverFun(SetMessage,"Блок Д-00-31");
			block_d39.AddOverFun(SetMessage,"Блок Д-39");
			input_block.AddOverFun(SetMessage,"Входной щит");
			// constructor code
		}
		public function InitializeGlobalScreen(p_main_screen: MainScreen)
		{
			modeInfo = ModeInfo.modeInfo;
			main_screen=p_main_screen;
			modeInfo.TraceModeInfo();	
			AddMouseUp();
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
					break;
				case ModeInfo.BLOCK_D_39:
					break;
				case ModeInfo.BLOCK_IL34:
					main_screen.InitializeIL34Screen();
					break;
				case ModeInfo.BLOCK_IL34_2:
					main_screen.InitializeIL34Screen();
					break;
				case ModeInfo.BLOCK_INPUT:
					break;
				case ModeInfo.BLOCK_IO3A:
				case ModeInfo.BLOCK_IO3A_2:
					main_screen.InitializeIO3AScreen();
					break;
				case ModeInfo.BLOCK_IO4:
					main_screen.InitializeIO4Screen();
					break;
				case ModeInfo.BLOCK_IO4_2:
					main_screen.InitializeIO4Screen();
					break;
				case ModeInfo.BLOCK_IP:
					main_screen.InitializeIPScreen();
					break;
				case ModeInfo.BLOCK_IS:
					main_screen.InitializeISScreen();
					break;
				case ModeInfo.BLOCK_ITA:
					main_screen.InitializeITAScreen();
					break;
				default: throw new Error("Некоректный блок");
			}
		}
	}	
}
