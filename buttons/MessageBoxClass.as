package buttons
{
	import flash.text.TextField;
	import buttons.MessageBoxClass;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class MessageBoxClass extends MovieClip
	{
		protected var ok_fun: Function;
		protected var parent_movieclip: MovieClip;
		public function MessageBoxClass()
		{
		}
		public function InitializeMessageBox(p_ok_fun: Function,text_message: String, p_parent_movieclip: MovieClip)
		{
			tb_text.text = text_message;
			ok_fun=p_ok_fun;
			parent_movieclip=p_parent_movieclip;
			this.parent_movieclip.addChild(this);
			b_ok.addEventListener(MouseEvent.MOUSE_UP,OkButtonMouseUp);
		}
		private function OkButtonMouseUp(e: MouseEvent)
		{
			ClearMessageBox();
			if (ok_fun!=null)
				ok_fun();			
		}
		protected function ClearMessageBox()
		{
			this.parent_movieclip.removeChild(this);
		}
	}
}