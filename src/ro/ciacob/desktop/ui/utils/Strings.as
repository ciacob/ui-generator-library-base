package ro.ciacob.desktop.ui.utils {
	
	public class Strings {
		
		/**
		 * Formats a Number (preferably) between `0` and `1` as a percentage, so that
		 * `0.1` becomes "10%". 
		 */
		public static function toPercentageFormat (value:Number) : String {
			return Math.round (value * 100).toString ().concat (CommonStrings.PERCENT);
		}
		
		/**
		 *	Capitallizes the first word in a string or all words.
		 *
		 *	@param str The string.
		 *
		 *	@param p_all (optional) Boolean value indicating if we should
		 *	capitalize all words or only the first.
		 *
		 *	@returns String
		 */
		public static function capitalize(str : String, ... args):String {
			if (args[0] === true) {
				return str.replace(/^.|\b./g, _upperCase);
			} else {
				return str.replace(/(^\w)/, _upperCase);
			}
		}

		/**
		 * Changes "myString" into "my string".
		 *
		 * Note that this doesn't work well with strings containing non
		 * ASCII chars.
		 */
		public static function deCamelize(str:String):String {
			return str.replace(/((?<=[a-z0-9])[A-Z])/g, ' $1');
		}

		/**
		 * Convenience method to check whether some given string "is" or "equals" any of
		 * a given set of alternatives.
		 *
		 * @param	p_string
		 * 			The string to check.
		 *
		 * @param	p_alternatives
		 * 			The alternatives to check against.
		 *
		 * @return	True if there is at least one match, false otherwise.
		 */
		public static function isAny(p_string:String, ... p_alternatives):Boolean {
			for (var i:int = 0; i < p_alternatives.length; i++) {
				var alternative:String = (p_alternatives[i] as String);
				if (p_string == alternative) {
					return true;
				}
			}
			return false;
		}

		/**
		 *	Determines whether the specified string contains any characters.
		 *
		 *	@param p_string The string to check
		 *
		 *	@returns Boolean
		 *
		 * 	@langversion ActionScript 3.0
		 *	@playerversion Flash 9.0
		 *	@tiptext
		 */
		public static function isEmpty(p_string:String):Boolean {
			if (p_string == null) {
				return true;
			}
			return !p_string.length;
		}

		/**
		 *	Removes whitespace from the front and the end of the specified
		 *	string.
		 *
		 *	@param p_string The String whose beginning and ending whitespace will
		 *	will be removed.
		 *
		 *	@returns String
		 *
		 * 	@langversion ActionScript 3.0
		 *	@playerversion Flash 9.0
		 *	@tiptext
		 */
		public static function trim(p_string:String):String {
			if (p_string == null) {
				return '';
			}
			return p_string.replace(/^\s+|\s+$/g, '');
		}

		/**
		 *	Determines whether the specified string ends with the specified suffix.
		 *
		 *	@param p_string The string that the suffic will be checked against.
		 *
		 *	@param p_end The suffix that will be tested against the string.
		 *
		 *	@returns Boolean
		 */
		public static function endsWith(p_string:String, p_end:String):Boolean {
			return p_string.lastIndexOf(p_end) == p_string.length - p_end.length;
		}
		
		/**
		 * Used in RegEx replacements. Capitalizes given char.
		 */
		private static function _upperCase(p_char : String, ... args) : String {
			return p_char.toUpperCase();
		}
	}
}
