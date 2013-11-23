package com.kbmj.viking.view
{
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class UnitStatusPopUpWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _UnitStatusPopUpWindow_Image1:Image;
        var _watchers:Array;
        private var _2099682666unitStatus:UnitStatus;
        var _bindingsByDestination:Object;
        private var _unit:UnitVO;
        private var _1887425575_buttonClose:Sprite;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var create:Boolean = false;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function UnitStatusPopUpWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:UnitStatus, id:"unitStatus", propertiesFactory:function () : Object
                {
                    return {x:2, y:150};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_UnitStatusPopUpWindow_Image1", events:{click:"___UnitStatusPopUpWindow_Image1_click"}, propertiesFactory:function () : Object
                {
                    return {x:0, y:0};
                }// end function
                })]};
            }// end function
            });
            _1887425575_buttonClose = drawSquare(7, 172, 745, 240, 16777215);
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___UnitStatusPopUpWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function drawSquare(param1:int, param2:int, param3:int, param4:int, param5:uint) : Sprite
        {
            var _loc_6:* = new Sprite();
            new Sprite().graphics.beginFill(param5, 0);
            _loc_6.graphics.drawRect(param1, param2, param3, param4);
            _loc_6.graphics.endFill();
            return _loc_6;
        }// end function

        public function set unitStatus(param1:UnitStatus) : void
        {
            var _loc_2:* = this._2099682666unitStatus;
            if (_loc_2 !== param1)
            {
                this._2099682666unitStatus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitStatus", _loc_2, param1));
            }
            return;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        public function ___UnitStatusPopUpWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:UnitStatusPopUpWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _UnitStatusPopUpWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_UnitStatusPopUpWindowWatcherSetupUtil");
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

        private function _UnitStatusPopUpWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _buttonClose;
            return;
        }// end function

        private function set _buttonClose(param1:Sprite) : void
        {
            var _loc_2:* = this._1887425575_buttonClose;
            if (_loc_2 !== param1)
            {
                this._1887425575_buttonClose = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_buttonClose", _loc_2, param1));
            }
            return;
        }// end function

        private function _UnitStatusPopUpWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _buttonClose;
            }// end function
            , function (param1:Object) : void
            {
                _UnitStatusPopUpWindow_Image1.source = param1;
                return;
            }// end function
            , "_UnitStatusPopUpWindow_Image1.source");
            result[0] = binding;
            return result;
        }// end function

        public function get unitStatus() : UnitStatus
        {
            return this._2099682666unitStatus;
        }// end function

        private function get _buttonClose() : Sprite
        {
            return this._1887425575_buttonClose;
        }// end function

        public function ___UnitStatusPopUpWindow_Image1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function init() : void
        {
            unitStatus.unit = _unit;
            create = true;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            UnitStatusPopUpWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
