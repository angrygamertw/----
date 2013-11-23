package com.kbmj.viking.view.city
{
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class GuildMasterWindowButtonRenderer extends Box implements IBindingClient
    {
        private var _1425574323enabledFlag:Boolean = true;
        private var remove_swf:Class;
        private var resignation_swf:Class;
        var _bindingsByDestination:Object;
        private var appointment_off_swf:Class;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _1555143502selectButton:Image;
        private var appointment_swf:Class;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var resignation_off_swf:Class;
        private var remove_off_swf:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function GuildMasterWindowButtonRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"selectButton", events:{click:"__selectButton_click"}})]};
            }// end function
            });
            appointment_swf = GuildMasterWindowButtonRenderer_appointment_swf;
            appointment_off_swf = GuildMasterWindowButtonRenderer_appointment_off_swf;
            resignation_swf = GuildMasterWindowButtonRenderer_resignation_swf;
            resignation_off_swf = GuildMasterWindowButtonRenderer_resignation_off_swf;
            remove_swf = GuildMasterWindowButtonRenderer_remove_swf;
            remove_off_swf = GuildMasterWindowButtonRenderer_remove_off_swf;
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

        private function get enabledFlag() : Boolean
        {
            return this._1425574323enabledFlag;
        }// end function

        override public function initialize() : void
        {
            var target:GuildMasterWindowButtonRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _GuildMasterWindowButtonRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_GuildMasterWindowButtonRendererWatcherSetupUtil");
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

        public function get selectButton() : Image
        {
            return this._1555143502selectButton;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            switch(parentDocument.btnStyle(data))
            {
                case "Appointment":
                {
                    selectButton.source = appointment_swf;
                    enabledFlag = true;
                    break;
                }
                case "AppointmentOff":
                {
                    selectButton.source = appointment_off_swf;
                    enabledFlag = false;
                    break;
                }
                case "Resignation":
                {
                    selectButton.source = resignation_swf;
                    enabledFlag = true;
                    break;
                }
                case "ResignationOff":
                {
                    selectButton.source = resignation_off_swf;
                    enabledFlag = false;
                    break;
                }
                case "RemoveMember":
                {
                    selectButton.source = remove_swf;
                    enabledFlag = true;
                    break;
                }
                case "RemoveMemberOff":
                {
                    selectButton.source = remove_off_swf;
                    enabledFlag = false;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set selectButton(param1:Image) : void
        {
            var _loc_2:* = this._1555143502selectButton;
            if (_loc_2 !== param1)
            {
                this._1555143502selectButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectButton", _loc_2, param1));
            }
            return;
        }// end function

        private function onClick() : void
        {
            parentDocument.onAppointment(data);
            return;
        }// end function

        private function _GuildMasterWindowButtonRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return enabledFlag;
            }// end function
            , function (param1:Boolean) : void
            {
                selectButton.enabled = param1;
                return;
            }// end function
            , "selectButton.enabled");
            result[0] = binding;
            return result;
        }// end function

        private function set enabledFlag(param1:Boolean) : void
        {
            var _loc_2:* = this._1425574323enabledFlag;
            if (_loc_2 !== param1)
            {
                this._1425574323enabledFlag = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enabledFlag", _loc_2, param1));
            }
            return;
        }// end function

        public function __selectButton_click(event:MouseEvent) : void
        {
            onClick();
            return;
        }// end function

        private function _GuildMasterWindowButtonRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = enabledFlag;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
