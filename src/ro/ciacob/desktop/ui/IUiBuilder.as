package ro.ciacob.desktop.ui {
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	
	/**
	 * The idea of grouping the UI building code in its own, interface backed class
	 * is to allow the library to be used with more than one visual framework, e.g.,
	 * use it with Flex and Starling/Feathers.
	 */
	public interface IUiBuilder {
	
		/**
		 * Reference to the visual container where UI components are to be dynamically created.
		 * It is expected that the initial value be set in the class constructor function.
		 */
		function get container () : DisplayObjectContainer;
		
		/**
		 * Reference to a function that is to be called each time user changes a value in one
		 * of the generated UI Components. The expected function signature is:
		 * 
		 * myFunction (key : String, value : Object);
		 * 
		 * It is expected that the initial value be set in the class constructor function. 
		 */
		function get componentChangedCallback () : Function;
		
		/**
		 * Reference to a function that is to be called as soon as a UI component has been
		 * generated; this acts as a signal that the next blueprint in the queue can be addressed.
		 * It is expected that the initial value be set in the class constructor function.
		 */		
		function get componentGeneratedCallback () : Function;
		
		/**
		 * Reference to the originating class (the class whose public accessors are to rendered as
		 * UI components). It is expected that the initial value be set in the class constructor function.
		 */
		function get originator () : Object;
		
		/**
		 * Cleans up the current container, preparing it for either recycling or decommissioning.
		 * Called by the generator that uses this builder before each generating session.
		 */
		function purgeContainer () : void;
		
		/**
		 * Actually creates and returns an UI Component. Executed in turn for each item in the queue.
		 * Can return `null` in case a Component cannot be built out of the current blueprint.
		 */
		function buildUiElement (blueprint : Object) : DisplayObject;
	}
}