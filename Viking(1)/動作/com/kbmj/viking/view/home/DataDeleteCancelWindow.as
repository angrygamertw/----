package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class DataDeleteCancelWindow extends CanvasWithPopUp implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _469104912delayTime:String = "00：00：00";
        var _watchers:Array;
        public var _DataDeleteCancelWindow_Text1:Text;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const DELETE_CANCEL:String = "deleteCancel";

        public function DataDeleteCancelWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {height:300, width:600, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_DataDeleteCancelWindow_Text1", stylesFactory:function () : void
                {
                    this.fontSize = 16;
                    this.fontWeight = "bold";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:15, y:50};
                }// end function
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.bottom = "30";
                    this.horizontalCenter = "0";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___DataDeleteCancelWindow_Button1_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"DeleteCancelBtn", buttonMode:true};
                    }// end function
                    }), new UIComponentDescriptor({type:Button, events:{click:"___DataDeleteCancelWindow_Button2_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"PlayerDeleteCancelBtn", buttonMode:true};
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
            this.x = 70;
            this.y = 140;
            this.height = 300;
            this.width = 600;
            return;
        }// end function

        public function deleteCancel() : void
        {
            sendEvent(DELETE_CANCEL);
            onClose();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:DataDeleteCancelWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _DataDeleteCancelWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_DataDeleteCancelWindowWatcherSetupUtil");
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

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _DataDeleteCancelWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = "\n      あなたのプレイヤーデータの削除を取り消すことが出来ます。" + "" + "\n      " + "" + "\n      プレイヤーデータ削除日時　：　" + delayTime + "" + "" + "\n      " + "";
            return;
        }// end function

        public function init() : void
        {
            return;
        }// end function

        public function set delayTime(param1:String) : void
        {
            var _loc_2:* = this._469104912delayTime;
            if (_loc_2 !== param1)
            {
                this._469104912delayTime = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "delayTime", _loc_2, param1));
            }
            return;
        }// end function

        public function ___DataDeleteCancelWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function ___DataDeleteCancelWindow_Button2_click(event:MouseEvent) : void
        {
            deleteCancel();
            return;
        }// end function

        private function _DataDeleteCancelWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "\n      あなたのプレイヤーデータの削除を取り消すことが出来ます。" + "" + "\n      " + "" + "\n      プレイヤーデータ削除日時　：　" + delayTime + "" + "" + "\n      " + "";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DataDeleteCancelWindow_Text1.text = param1;
                return;
            }// end function
            , "_DataDeleteCancelWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        public function get delayTime() : String
        {
            return this._469104912delayTime;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
