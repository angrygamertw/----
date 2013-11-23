package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class SquareConfirmWindow extends PopupWindow implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _690744879_requirementText:String;
        var _watchers:Array;
        public var _SquareConfirmWindow_Label1:Label;
        public var _SquareConfirmWindow_Label2:Label;
        public var _SquareConfirmWindow_Label3:Label;
        public var _SquareConfirmWindow_Label4:Label;
        var _bindings:Array;
        private var _798414055mercenaryDetail:VBox;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _mercenary:MercenaryVO;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "Confirmed";

        public function SquareConfirmWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:VBox, id:"mercenaryDetail", stylesFactory:function () : void
                    {
                        this.verticalGap = 10;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:290, x:110, y:55, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SquareConfirmWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_SquareConfirmWindow_Label2", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_SquareConfirmWindow_Label3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_SquareConfirmWindow_Label4", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                    {
                        this.horizontalCenter = "20";
                        this.horizontalGap = 10;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {y:220, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___SquareConfirmWindow_Button1_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"CancelCanaButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___SquareConfirmWindow_Button2_click"}, propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"OkButton", buttonMode:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        public function set mercenaryDetail(param1:VBox) : void
        {
            var _loc_2:* = this._798414055mercenaryDetail;
            if (_loc_2 !== param1)
            {
                this._798414055mercenaryDetail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mercenaryDetail", _loc_2, param1));
            }
            return;
        }// end function

        private function get _requirementText() : String
        {
            return this._690744879_requirementText;
        }// end function

        private function set _1513283830mercenary(param1:MercenaryVO) : void
        {
            _mercenary = param1;
            _requirementText = param1.requirement ? ("｢" + param1.requirement.nameLabel + "｣(1/" + param1.numRequiredMaterial + ")を消費します。") : ("無し");
            return;
        }// end function

        public function ___SquareConfirmWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function ___SquareConfirmWindow_Button2_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SquareConfirmWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _SquareConfirmWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_SquareConfirmWindowWatcherSetupUtil");
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

        private function onConfirm() : void
        {
            sendPopupEvent(CONFIRMED, mercenary);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _SquareConfirmWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = mercenary.unit.name;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SquareConfirmWindow_Label1.text = param1;
                return;
            }// end function
            , "_SquareConfirmWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = mercenary.unit.jobName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SquareConfirmWindow_Label2.text = param1;
                return;
            }// end function
            , "_SquareConfirmWindow_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = mercenary.price;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SquareConfirmWindow_Label3.text = param1;
                return;
            }// end function
            , "_SquareConfirmWindow_Label3.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _requirementText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _SquareConfirmWindow_Label4.text = param1;
                return;
            }// end function
            , "_SquareConfirmWindow_Label4.text");
            result[3] = binding;
            return result;
        }// end function

        public function get mercenaryDetail() : VBox
        {
            return this._798414055mercenaryDetail;
        }// end function

        private function set _requirementText(param1:String) : void
        {
            var _loc_2:* = this._690744879_requirementText;
            if (_loc_2 !== param1)
            {
                this._690744879_requirementText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_requirementText", _loc_2, param1));
            }
            return;
        }// end function

        public function set mercenary(param1:MercenaryVO) : void
        {
            var _loc_2:* = this.mercenary;
            if (_loc_2 !== param1)
            {
                this._1513283830mercenary = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mercenary", _loc_2, param1));
            }
            return;
        }// end function

        public function get mercenary() : MercenaryVO
        {
            return _mercenary;
        }// end function

        private function _SquareConfirmWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = mercenary.unit.name;
            _loc_1 = mercenary.unit.jobName;
            _loc_1 = mercenary.price;
            _loc_1 = _requirementText;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
