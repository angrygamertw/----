package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.home.*;
    import com.kbmj.viking.vo.tactics.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class ChangeImageWindow extends PopupWindow implements IBindingClient
    {
        private var _1633529882unitImageRenderer:ClassFactory;
        var _bindingsByDestination:Object;
        private var _989304983cancel_button:Button;
        private var _1523220375_images:ArrayCollection;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var confirmImageChangeWindow:ConfirmImageChangeWindow;
        private var _unit:UnitVO;
        var _bindings:Array;
        private var _883697156buildingdatalist:TileList;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const NAME:String = "ChangeImageWindow";
        public static const IMAGE_SELECTED:String = NAME + "/Confirmed";

        public function ChangeImageWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:TileList, id:"buildingdatalist", stylesFactory:function () : void
                    {
                        this.backgroundColor = 12625797;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:15, y:50, height:430, width:738, selectable:false, horizontalScrollPolicy:"off", maxColumns:5, columnWidth:144, rowHeight:210};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {y:500, percentWidth:100, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"cancel_button", events:{click:"__cancel_button_click"}, propertiesFactory:function () : Object
                        {
                            return {styleName:"CancelCanaButton", buttonMode:true};
                        }// end function
                        }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
                    {
                        return {percentHeight:100};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            confirmImageChangeWindow = new ConfirmImageChangeWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.percentHeight = 100;
            _ChangeImageWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___ChangeImageWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function get buildingdatalist() : TileList
        {
            return this._883697156buildingdatalist;
        }// end function

        public function set unit(param1:UnitVO) : void
        {
            _unit = param1;
            return;
        }// end function

        private function _ChangeImageWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _images;
            }// end function
            , function (param1:Object) : void
            {
                buildingdatalist.dataProvider = param1;
                return;
            }// end function
            , "buildingdatalist.dataProvider");
            result[0] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return unitImageRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                buildingdatalist.itemRenderer = param1;
                return;
            }// end function
            , "buildingdatalist.itemRenderer");
            result[1] = binding;
            return result;
        }// end function

        private function _ChangeImageWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            unitImageRenderer = _loc_1;
            _loc_1.generator = ChangeImageWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function __cancel_button_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function init() : void
        {
            confirmImageChangeWindow.addEventListener(ConfirmImageChangeWindow.CONFIRMED, onConfirm);
            return;
        }// end function

        public function get cancel_button() : Button
        {
            return this._989304983cancel_button;
        }// end function

        override public function initialize() : void
        {
            var target:ChangeImageWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _ChangeImageWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_ChangeImageWindowWatcherSetupUtil");
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

        private function onConfirm(event:PopupEvent) : void
        {
            sendPopupEvent(IMAGE_SELECTED, event.param);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function get _images() : ArrayCollection
        {
            return this._1523220375_images;
        }// end function

        private function set _images(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1523220375_images;
            if (_loc_2 !== param1)
            {
                this._1523220375_images = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_images", _loc_2, param1));
            }
            return;
        }// end function

        public function onClick(param1:Object) : void
        {
            confirmImageChangeWindow.init(_unit, UnitImageVO(param1));
            popupWindow(confirmImageChangeWindow);
            return;
        }// end function

        public function get unitImageRenderer() : ClassFactory
        {
            return this._1633529882unitImageRenderer;
        }// end function

        public function set unitImageRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1633529882unitImageRenderer;
            if (_loc_2 !== param1)
            {
                this._1633529882unitImageRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unitImageRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function set cancel_button(param1:Button) : void
        {
            var _loc_2:* = this._989304983cancel_button;
            if (_loc_2 !== param1)
            {
                this._989304983cancel_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancel_button", _loc_2, param1));
            }
            return;
        }// end function

        public function set buildingdatalist(param1:TileList) : void
        {
            var _loc_2:* = this._883697156buildingdatalist;
            if (_loc_2 !== param1)
            {
                this._883697156buildingdatalist = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingdatalist", _loc_2, param1));
            }
            return;
        }// end function

        public function setImages(param1:Array) : void
        {
            _images = new ArrayCollection(param1);
            return;
        }// end function

        private function _ChangeImageWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _images;
            _loc_1 = unitImageRenderer;
            return;
        }// end function

        public function ___ChangeImageWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            ChangeImageWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
