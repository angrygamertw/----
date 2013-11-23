package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class ShamBattleTargetListWindow_inlineComponent1 extends HBox implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _ShamBattleTargetListWindow_inlineComponent1_Label1:Label;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _88844982outerDocument:ShamBattleTargetListWindow;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ShamBattleTargetListWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_ShamBattleTargetListWindow_inlineComponent1_Label1", events:{click:"___ShamBattleTargetListWindow_inlineComponent1_Label1_click"}, stylesFactory:function () : void
                {
                    this.color = 12337210;
                    this.textDecoration = "underline";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {buttonMode:true, mouseChildren:false};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void
            {
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            return;
        }// end function

        private function _ShamBattleTargetListWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getPlayerName(data);
            _loc_1 = Utils.i18n("shamBattleSelect");
            return;
        }// end function

        private function _ShamBattleTargetListWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getPlayerName(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_inlineComponent1_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("shamBattleSelect");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ShamBattleTargetListWindow_inlineComponent1_Label1.toolTip = param1;
                return;
            }// end function
            , "_ShamBattleTargetListWindow_inlineComponent1_Label1.toolTip");
            result[1] = binding;
            return result;
        }// end function

        public function get outerDocument() : ShamBattleTargetListWindow
        {
            return this._88844982outerDocument;
        }// end function

        override public function initialize() : void
        {
            var target:ShamBattleTargetListWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ShamBattleTargetListWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ShamBattleTargetListWindow_inlineComponent1WatcherSetupUtil");
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

        public function ___ShamBattleTargetListWindow_inlineComponent1_Label1_click(event:MouseEvent) : void
        {
            outerDocument.onUnitSelect(data);
            return;
        }// end function

        public function set outerDocument(param1:ShamBattleTargetListWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ShamBattleTargetListWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
