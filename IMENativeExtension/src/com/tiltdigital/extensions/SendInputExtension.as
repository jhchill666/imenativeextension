package com.tiltdigital.extensions
{
	import flash.external.ExtensionContext;

	public class SendInputExtension
	{
		private var context : ExtensionContext;


		/**
		 * Creates an Air 3 Native Extension conduit to the win32 'SendInput' method
		 */
		public function SendInputExtension()
		{
			context = ExtensionContext.createExtensionContext( 'com.tiltdigital.utils.SendInput', '' );
		}


		/**
		 *
		 */
		public function sendChar( char:String ):void
		{
			context.call( 'sendInput', char );
		}
	}
}
