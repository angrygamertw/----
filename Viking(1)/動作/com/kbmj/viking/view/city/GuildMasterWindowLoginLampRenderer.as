package com.kbmj.viking.view.city
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class GuildMasterWindowLoginLampRenderer extends Box implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _1719527199loginLamp:Image;
        var _bindings:Array;
        private var login_lamp01_swf:Class;
        private var login_lamp02_swf:Class;
        private var login_lamp03_swf:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildMasterWindowLoginLampRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"loginLamp"})]};
            }// end function
            });
            login_lamp01_swf = GuildMasterWindowLoginLampRenderer_login_lamp01_swf;
            login_lamp02_swf = GuildMasterWindowLoginLampRenderer_login_lamp02_swf;
            login_lamp03_swf = GuildMasterWindowLoginLampRenderer_login_lamp03_swf;
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
                this.horizontalAlign = "center";
                return;
            }// end function
            ;
            this.percentWidth = 100;
            return;
        }// end function

        public function set loginLamp(param1:Image) : void
        {
            var _loc_2:* = this._1719527199loginLamp;
            if (_loc_2 !== param1)
            {
                this._1719527199loginLamp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loginLamp", _loc_2, param1));
            }
            return;
        }// end function

        private function _GuildMasterWindowLoginLampRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = parentDocument.activeString(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                loginLamp.toolTip = param1;
                return;
            }// end function
            , "loginLamp.toolTip");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMasterWindowLoginLampRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMasterWindowLoginLampRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GuildMasterWindowLoginLampRendererWatcherSetupUtil");
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

        public function get loginLamp() : Image
        {
            return this._1719527199loginLamp;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            switch(data.active_status)
            {
                case 0:
                {
                    loginLamp.source = login_lamp01_swf;
                    break;
                }
                case 1:
                {
                    loginLamp.source = login_lamp02_swf;
                    break;
                }
                case 2:
                {
                    loginLamp.source = login_lamp03_swf;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function _GuildMasterWindowLoginLampRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = parentDocument.activeString(data);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
