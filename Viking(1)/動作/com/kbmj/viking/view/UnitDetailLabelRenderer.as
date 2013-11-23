package com.kbmj.viking.view
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitDetailLabelRenderer extends CanvasWithPopUp implements IBindingClient
    {
        private var _292854225unitName:String;
        private var unit:UnitVO;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        public var _UnitDetailLabelRenderer_Label1:Label;
        var _bindingsBeginWithWord:Object;
        private var unitStatusPopUpWindow:UnitStatusPopUpWindow;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1721924416nameBox:HBox;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function UnitDetailLabelRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:HBox, id:"nameBox", stylesFactory:function () : void
                {
                    this.horizontalAlign = "center";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_UnitDetailLabelRenderer_Label1", events:{click:"___UnitDetailLabelRenderer_Label1_click"}, stylesFactory:function () : void
                    {
                        this.textDecoration = "underline";
                        this.color = 12337210;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {buttonMode:true, mouseChildren:false};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            unitStatusPopUpWindow = new UnitStatusPopUpWindow();
            _292854225unitName = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentWidth = 100;
            return;
        }// end function

        public function ___UnitDetailLabelRenderer_Label1_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

        public function get nameBox() : HBox
        {
            return this._1721924416nameBox;
        }// end function

        public function set nameBox(param1:HBox) : void
        {
            var _loc_2:* = this._1721924416nameBox;
            if (_loc_2 !== param1)
            {
                this._1721924416nameBox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameBox", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:UnitDetailLabelRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitDetailLabelRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitDetailLabelRendererWatcherSetupUtil");
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

        private function _UnitDetailLabelRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = horizontalScrollPolicy;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                nameBox.horizontalScrollPolicy = param1;
                return;
            }// end function
            , "nameBox.horizontalScrollPolicy");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = unitName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDetailLabelRenderer_Label1.text = param1;
                return;
            }// end function
            , "_UnitDetailLabelRenderer_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalShowDetail");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _UnitDetailLabelRenderer_Label1.toolTip = param1;
                return;
            }// end function
            , "_UnitDetailLabelRenderer_Label1.toolTip");
            result[2] = binding;
            return result;
        }// end function

        private function _UnitDetailLabelRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = horizontalScrollPolicy;
            _loc_1 = unitName;
            _loc_1 = Utils.i18n("generalShowDetail");
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            switch(data.voType)
            {
                case "MercenaryVO":
                {
                    unitName = data.unit.name;
                    unit = data.unit;
                    break;
                }
                case "UnitVO":
                {
                    unitName = data.name;
                    unit = data as UnitVO;
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            unitStatusPopUpWindow = new UnitStatusPopUpWindow();
            return;
        }// end function

        private function set unitName(param1:String) : void
        {
            var _loc_2:* = this._292854225unitName;
            if (_loc_2 !== param1)
            {
                this._292854225unitName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitName", _loc_2, param1));
            }
            return;
        }// end function

        private function onClick() : void
        {
            unitStatusPopUpWindow.unit = unit;
            this.popupWindow(unitStatusPopUpWindow, false);
            return;
        }// end function

        private function get unitName() : String
        {
            return this._292854225unitName;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitDetailLabelRenderer._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
