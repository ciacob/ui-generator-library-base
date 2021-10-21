package ro.ciacob.desktop.ui.utils {
	public class Objects {
		public function Objects() {}

		/**
		 * Returns `true` if given Object is empty, i.e., it has no keys. Returns `false` if given Object has at 
		 * least one key.
		 */
		public static function isEmpty (object : Object) : Boolean {
			for (var key : String in object) {
				return false;
			}
			return true;
		}
		
	}
}