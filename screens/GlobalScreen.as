package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import blocks.ModeInfo;
	
	
	public class GlobalScreen extends MovieClip {
		
		var main_screen: MainScreen;
		var modeInfo: ModeInfo;
		
		public function GlobalScreen() 
		{
			block_ip.AddOverFun(SetMessage,"Блок ИП");
			block_is.AddOverFun(SetMessage,"Блок ИС");
			block_ita.AddOverFun(SetMessage,"Блок ИТ/А");
			block_io3a.AddOverFun(SetMessage,"Блок ИО-3А");
			block_io3b.AddOverFun(SetMessage,"Блок ИО-3Б");
			block_il34.AddOverFun(SetMessage,"Блок ИО34");
			block_io4.AddOverFun(SetMessage,"Блок ИО-4");
			block_io3a2.AddOverFun(SetMessage,"Блок ИО-3А(2)");
			block_io3b2.AddOverFun(SetMessage,"Блок ИО-3Б(2)");
			block_il342.AddOverFun(SetMessage,"Блок ИО34(2)");
			block_io42.AddOverFun(SetMessage,"Блок ИО-4(2)");
			block_d0031.AddOverFun(SetMessage,"Блок Д-00-31");
			block_d39.AddOverFun(SetMessage,"Блок Д-39");
			input_block.AddOverFun(SetMessage,"Входной щит");
			// constructor code
		}
		public function InitializeGlobalScreen(p_main_screen: MainScreen,pModeInfo: ModeInfo)
		{
			main_screen=p_main_screen;
			this.modeInfo=pModeInfo;
			modeInfo.TraceModeInfo();	
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
	}
	
}
