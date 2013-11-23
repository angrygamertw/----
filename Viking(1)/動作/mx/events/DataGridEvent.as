﻿package mx.events
{
    import flash.events.*;
    import mx.controls.listClasses.*;

    public class DataGridEvent extends Event
    {
        public var reason:String;
        public var localX:Number;
        public var dataField:String;
        public var itemRenderer:IListItemRenderer;
        public var rowIndex:int;
        public var columnIndex:int;
        public static const ITEM_EDIT_BEGIN:String = "itemEditBegin";
        public static const ITEM_EDITOR_CREATE:String = "itemEditorCreate";
        public static const ITEM_EDIT_END:String = "itemEditEnd";
        public static const ITEM_EDIT_BEGINNING:String = "itemEditBeginning";
        public static const HEADER_RELEASE:String = "headerRelease";
        static const VERSION:String = "3.4.1.10084";
        public static const ITEM_FOCUS_OUT:String = "itemFocusOut";
        public static const COLUMN_STRETCH:String = "columnStretch";
        public static const ITEM_FOCUS_IN:String = "itemFocusIn";

        public function DataGridEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = -1, param5:String = null, param6:int = -1, param7:String = null, param8:IListItemRenderer = null, param9:Number = NaN)
        {
            super(param1, param2, param3);
            this.columnIndex = param4;
            this.dataField = param5;
            this.rowIndex = param6;
            this.reason = param7;
            this.itemRenderer = param8;
            this.localX = param9;
            return;
        }// end function

        override public function clone() : Event
        {
            return new DataGridEvent(type, bubbles, cancelable, columnIndex, dataField, rowIndex, reason, itemRenderer, localX);
        }// end function

    }
}
