package controls
{
	import blocks.ControlElement;
	
	public class Bulb extends ControlElement
	{
		public function Bulb()
		{
			InitializeControlElement(ControlElement.S_BINARY, ControlElement.S_B_DEFAULT, false);
		}
	}
}
