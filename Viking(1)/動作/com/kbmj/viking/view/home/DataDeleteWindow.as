package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.managers.*;

    public class DataDeleteWindow extends CanvasWithPopUp implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        public var _DataDeleteWindow_Text1:Text;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindings:Array;
        var _watchers:Array;
        public static const DELETE_CONFIRMATION:String = "deleteConfirmation";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function DataDeleteWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {height:300, width:600, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_DataDeleteWindow_Text1", stylesFactory:function () : void
                {
                    this.fontSize = 16;
                    this.fontWeight = "bold";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:15, y:45};
                }// end function
                }), new UIComponentDescriptor({type:HBox, stylesFactory:function () : void
                {
                    this.bottom = "20";
                    this.horizontalCenter = "0";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___DataDeleteWindow_Button1_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"DeleteCancelBtn", buttonMode:true};
                    }// end function
                    }), new UIComponentDescriptor({type:Button, events:{click:"___DataDeleteWindow_Button2_click"}, propertiesFactory:function () : Object
                    {
                        return {label:"", styleName:"PlayerDeleteBtn", buttonMode:true};
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

        public function onDelete() : void
        {
            sendEvent(DELETE_CONFIRMATION);
            onClose();
            return;
        }// end function

        public function ___DataDeleteWindow_Button1_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        public function ___DataDeleteWindow_Button2_click(event:MouseEvent) : void
        {
            onDelete();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:DataDeleteWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _DataDeleteWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_DataDeleteWindowWatcherSetupUtil");
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

        private function _DataDeleteWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "\n      このサーバーでのプレイヤーデータ（課金ポイント含む）を削除します。" + "" + "\n      " + "" + "\n      　・プレイヤーデータは2日後に削除されます。" + "" + "\n      　・それまでの間は削除を取り消すことが出来ます。" + "" + "\n      　・削除後、このサーバーにログインするとゲームの最初から始まります。" + "" + "\n      　・市場で出品している商品はすべて取り下げられます。" + "";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _DataDeleteWindow_Text1.text = param1;
                return;
            }// end function
            , "_DataDeleteWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        private function onClose() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _DataDeleteWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = "\n      このサーバーでのプレイヤーデータ（課金ポイント含む）を削除します。" + "" + "\n      " + "" + "\n      　・プレイヤーデータは2日後に削除されます。" + "" + "\n      　・それまでの間は削除を取り消すことが出来ます。" + "" + "\n      　・削除後、このサーバーにログインするとゲームの最初から始まります。" + "" + "\n      　・市場で出品している商品はすべて取り下げられます。" + "";
            return;
        }// end function

        public function init() : void
        {
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
