package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class NormalSummonWindow_inlineComponent4 extends Text implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:NormalSummonWindow;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function NormalSummonWindow_inlineComponent4()
        {
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            return;
        }// end function

        private function _NormalSummonWindow_inlineComponent4_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getItemName(data, 0);
            _loc_1 = outerDocument.getItemColor(data, 0);
            return;
        }// end function

        public function set outerDocument(param1:NormalSummonWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _NormalSummonWindow_inlineComponent4_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getItemName(data, 0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                this.text = param1;
                return;
            }// end function
            , "this.text");
            result[0] = binding;
            binding = new Binding(this, function () : uint
            {
                return outerDocument.getItemColor(data, 0);
            }// end function
            , function (param1:uint) : void
            {
                this.setStyle("color", param1);
                return;
            }// end function
            , "this.color");
            result[1] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:NormalSummonWindow_inlineComponent4;
            var watcherSetupUtilClass:Object;
            var bindings:* = _NormalSummonWindow_inlineComponent4_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_NormalSummonWindow_inlineComponent4WatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        public function get outerDocument() : NormalSummonWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            NormalSummonWindow_inlineComponent4._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
