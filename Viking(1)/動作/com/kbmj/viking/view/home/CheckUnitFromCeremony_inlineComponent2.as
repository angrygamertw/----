package com.kbmj.viking.view.home
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class CheckUnitFromCeremony_inlineComponent2 extends Image implements IBindingClient
    {
        var _bindings:Array;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:CheckUnitFromCeremony;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function CheckUnitFromCeremony_inlineComponent2()
        {
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            this.addEventListener("click", ___CheckUnitFromCeremony_inlineComponent2_Image1_click);
            return;
        }// end function

        private function _CheckUnitFromCeremony_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return outerDocument.getDismissImage(data);
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

        public function ___CheckUnitFromCeremony_inlineComponent2_Image1_click(event:MouseEvent) : void
        {
            outerDocument.dismissionUnit(data);
            return;
        }// end function

        private function _CheckUnitFromCeremony_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getDismissImage(data);
            return;
        }// end function

        public function set outerDocument(param1:CheckUnitFromCeremony) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:CheckUnitFromCeremony_inlineComponent2;
            var watcherSetupUtilClass:Object;
            var bindings:* = _CheckUnitFromCeremony_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_CheckUnitFromCeremony_inlineComponent2WatcherSetupUtil");
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

        public function get outerDocument() : CheckUnitFromCeremony
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            CheckUnitFromCeremony_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
