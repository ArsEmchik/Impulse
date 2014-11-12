package buttons
{
	import buttons.MessageBoxClass;
	import fl.controls.Button;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class MessageBoxClass extends MovieClip
	{
		public var tb_text:TextField;
		public var b_ok:Button;
		
		protected var ok_fun:Function;
		protected var parent_movieclip:MovieClip;
		
		public function InitializeMessageBox(p_ok_fun:Function, text_message:String, p_parent_movieclip:MovieClip)
		{
			tb_text.text = text_message;
			ok_fun = p_ok_fun;
			
			parent_movieclip = p_parent_movieclip;
			parent_movieclip.addChild(this);
			
			b_ok.addEventListener(MouseEvent.MOUSE_UP, OkButtonMouseUp);
		}
		
		private function OkButtonMouseUp(e:MouseEvent)
		{
			ClearMessageBox();
			if (ok_fun != null)
				ok_fun();
		}
		
		protected function ClearMessageBox()
		{
			parent_movieclip.removeChild(this);
		}
	}
}