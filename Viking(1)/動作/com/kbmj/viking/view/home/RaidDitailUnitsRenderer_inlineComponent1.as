package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidDitailUnitsRenderer_inlineComponent1 extends Image implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:RaidDitailUnitsRenderer;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidDitailUnitsRenderer_inlineComponent1()
        {
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            this.x = 0;
            this.y = 0;
            return;
        }// end function

        private function _RaidDitailUnitsRenderer_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = data.faceimage;
            return;
        }// end function

        public function set outerDocument(param1:RaidDitailUnitsRenderer) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidDitailUnitsRenderer_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return data.faceimage;
            }// end function
            , function (param1:Object) : void
            {
                this.source = param1;
                return;
            }// end function
            , "this.source");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:RaidDitailUnitsRenderer_inlineComponent1;
            var watcherSetupUtilClass:Object;
            var bindings:* = _RaidDitailUnitsRenderer_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidDitailUnitsRenderer_inlineComponent1WatcherSetupUtil");
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

        public function get outerDocument() : RaidDitailUnitsRenderer
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RaidDitailUnitsRenderer_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
