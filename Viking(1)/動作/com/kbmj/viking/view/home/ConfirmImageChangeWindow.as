package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ConfirmImageChangeWindow extends PopupWindow implements IBindingClient
    {
        private var _embed_mxml__images_icon_power_png_227571469:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsByDestination:Object;
        private var _1990131276cancelButton:Button;
        var _bindingsBeginWithWord:Object;
        private var _91329123_unit:UnitVO;
        var _watchers:Array;
        public var _ConfirmImageChangeWindow_Image1:Image;
        public var _ConfirmImageChangeWindow_Image2:Image;
        public var _ConfirmImageChangeWindow_Label1:Label;
        private var _1641788370okButton:Button;
        var _bindings:Array;
        private var _2003101270_newUnitImage:UnitImageVO;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CONFIRMED:String = "ConfirmImageChangeWindow/Confirmed";

        public function ConfirmImageChangeWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, y:20, childDescriptors:[new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ConfirmImageChangeWindow_Image1", propertiesFactory:function () : Object
                            {
                                return {width:120, height:158};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, id:"_ConfirmImageChangeWindow_Image2", propertiesFactory:function () : Object
                            {
                                return {width:120, height:158};
                            }// end function
                            }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                        {
                            this.horizontalGap = 2;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                            {
                                return {source:_embed_mxml__images_icon_power_png_227571469};
                            }// end function
                            }), new UIComponentDescriptor({type:Label, id:"_ConfirmImageChangeWindow_Label1", propertiesFactory:function () : Object
                            {
                                return {styleName:"UnitSelectText"};
                            }// end function
                            }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, id:"cancelButton", events:{click:"__cancelButton_click"}, propertiesFactory:function () : Object
                            {
                                return {styleName:"CancelCanaButton", buttonMode:true, mouseChildren:false};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                            {
                                return {styleName:"OnlyOkButton", buttonMode:true, mouseChildren:false};
                            }// end function
                            }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__images_icon_power_png_227571469 = ConfirmImageChangeWindow__embed_mxml__images_icon_power_png_227571469;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            return;
        }// end function

        public function get okButton() : Button
        {
            return this._1641788370okButton;
        }// end function

        private function set _unit(param1:UnitVO) : void
        {
            var _loc_2:* = this._91329123_unit;
            if (_loc_2 !== param1)
            {
                this._91329123_unit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_unit", _loc_2, param1));
            }
            return;
        }// end function

        private function set _newUnitImage(param1:UnitImageVO) : void
        {
            var _loc_2:* = this._2003101270_newUnitImage;
            if (_loc_2 !== param1)
            {
                this._2003101270_newUnitImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_newUnitImage", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:ConfirmImageChangeWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ConfirmImageChangeWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ConfirmImageChangeWindowWatcherSetupUtil");
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

        public function init(param1:UnitVO, param2:UnitImageVO) : void
        {
            _unit = param1;
            _newUnitImage = param2;
            if (_unit.faceUic.contains(_unit.faceLoader))
            {
                MovieClip(_unit.faceLoader.content).gotoAndPlay("img_unit_status");
            }
            return;
        }// end function

        private function get _newUnitImage() : UnitImageVO
        {
            return this._2003101270_newUnitImage;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            onConfirm();
            return;
        }// end function

        private function onConfirm() : void
        {
            sendPopupEvent(CONFIRMED, {unit:_unit, path:_newUnitImage.path});
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _ConfirmImageChangeWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _unit.faceUic;
            _loc_1 = _newUnitImage.dupImage;
            _loc_1 = "30神力を使用して" + _unit.name + "の顔を変更しますか？";
            return;
        }// end function

        private function _ConfirmImageChangeWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _unit.faceUic;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmImageChangeWindow_Image1.source = param1;
                return;
            }// end function
            , "_ConfirmImageChangeWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _newUnitImage.dupImage;
            }// end function
            , function (param1:Object) : void
            {
                _ConfirmImageChangeWindow_Image2.source = param1;
                return;
            }// end function
            , "_ConfirmImageChangeWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "30神力を使用して" + _unit.name + "の顔を変更しますか？";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _ConfirmImageChangeWindow_Label1.text = param1;
                return;
            }// end function
            , "_ConfirmImageChangeWindow_Label1.text");
            result[2] = binding;
            return result;
        }// end function

        public function set okButton(param1:Button) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        public function get cancelButton() : Button
        {
            return this._1990131276cancelButton;
        }// end function

        public function set cancelButton(param1:Button) : void
        {
            var _loc_2:* = this._1990131276cancelButton;
            if (_loc_2 !== param1)
            {
                this._1990131276cancelButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancelButton", _loc_2, param1));
            }
            return;
        }// end function

        private function get _unit() : UnitVO
        {
            return this._91329123_unit;
        }// end function

        public function __cancelButton_click(event:MouseEvent) : void
        {
            onCancel();
            return;
        }// end function

        public function onCancel() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
