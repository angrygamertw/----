package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidCommandWindow extends PopupWindow implements IBindingClient
    {
        private var _989304983cancel_button:Button;
        var _watchers:Array;
        public var _RaidCommandWindow_Text2:Text;
        private var _1651706220protectionExpirationLabel:Text;
        public var _RaidCommandWindow_Text4:Text;
        public var raidSelectTargetWindow:RaidSelectTargetWindow;
        private var _1414057796raidLimitation:Boolean;
        private var _expiredAt:String = "";
        private var _1628869025raidLimitationExpirationLabel:Text;
        var _bindingsByDestination:Object;
        private var confirmRaidProtectionWindow:ConfirmRaidProtectionWindow;
        var _bindingsBeginWithWord:Object;
        public var raidReportDitail:RaidReportDitail;
        var _bindings:Array;
        public var raidReportWindow:RaidReportWindow;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1722718208_player:PlayerVO;
        public static const START_RAID:String = "startRaid";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const LOAD_TARGET:String = "loadTarget";
        public static const LOAD_REPORT:String = "loadReport";

        public function RaidCommandWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:560, height:351, childDescriptors:[new UIComponentDescriptor({type:Text, id:"protectionExpirationLabel", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    this.color = 16711680;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:200, y:70, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_RaidCommandWindow_Text2", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    this.color = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:137, y:105, width:400, height:100};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"raidLimitationExpirationLabel", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    this.color = 16711680;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:137, y:153, width:400, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_RaidCommandWindow_Text4", stylesFactory:function () : void
                {
                    this.fontSize = 13;
                    this.color = 0;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:137, y:230, width:400, height:100};
                }// end function
                }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                {
                    return {percentWidth:100, y:300, childDescriptors:[new UIComponentDescriptor({type:Spacer, propertiesFactory:function () : Object
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
                })]};
            }// end function
            });
            raidSelectTargetWindow = new RaidSelectTargetWindow();
            raidReportWindow = new RaidReportWindow();
            raidReportDitail = new RaidReportDitail();
            confirmRaidProtectionWindow = new ConfirmRaidProtectionWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 560;
            this.height = 351;
            this.addEventListener("creationComplete", ___RaidCommandWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function __cancel_button_click(event:MouseEvent) : void
        {
            onClose();
            return;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            return;
        }// end function

        private function startRaid(event:Event) : void
        {
            sendEvent(START_RAID);
            onClose();
            return;
        }// end function

        private function set _player(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1722718208_player;
            if (_loc_2 !== param1)
            {
                this._1722718208_player = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_player", _loc_2, param1));
            }
            return;
        }// end function

        public function ___RaidCommandWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RaidCommandWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidCommandWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidCommandWindowWatcherSetupUtil");
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

        public function get cancel_button() : Button
        {
            return this._989304983cancel_button;
        }// end function

        public function init() : void
        {
            confirmRaidProtectionWindow.addEventListener(ConfirmRaidProtectionWindow.CONFIRMED, function (event:Event) : void
            {
                sendEvent(Viking.PROTECT_FROM_RAID);
                return;
            }// end function
            );
            return;
        }// end function

        private function set raidLimitation(param1:Boolean) : void
        {
            var _loc_2:* = this._1414057796raidLimitation;
            if (_loc_2 !== param1)
            {
                this._1414057796raidLimitation = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidLimitation", _loc_2, param1));
            }
            return;
        }// end function

        public function get raidLimitationExpirationLabel() : Text
        {
            return this._1628869025raidLimitationExpirationLabel;
        }// end function

        private function _RaidCommandWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Boolean
            {
                return !_player.raidProtectionExpired;
            }// end function
            , function (param1:Boolean) : void
            {
                protectionExpirationLabel.visible = param1;
                return;
            }// end function
            , "protectionExpirationLabel.visible");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize193") + ":" + _player.raidProtectionExpiredAtLabel + "" + Utils.i18n("localize194");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                protectionExpirationLabel.text = param1;
                return;
            }// end function
            , "protectionExpirationLabel.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize195") + "" + "\n" + "" + Utils.i18n("localize196") + "" + "\n" + "{Utils.i18n(\'localize197\')";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidCommandWindow_Text2.text = param1;
                return;
            }// end function
            , "_RaidCommandWindow_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return !_player.raidLimitationExpired;
            }// end function
            , function (param1:Boolean) : void
            {
                raidLimitationExpirationLabel.visible = param1;
                return;
            }// end function
            , "raidLimitationExpirationLabel.visible");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize198") + ":" + _player.raidLimitationExpiredAtLabel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                raidLimitationExpirationLabel.text = param1;
                return;
            }// end function
            , "raidLimitationExpirationLabel.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize199") + "" + "\n" + "" + Utils.i18n("localize200");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidCommandWindow_Text4.text = param1;
                return;
            }// end function
            , "_RaidCommandWindow_Text4.text");
            result[5] = binding;
            return result;
        }// end function

        private function _RaidCommandWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = !_player.raidProtectionExpired;
            _loc_1 = Utils.i18n("localize193") + ":" + _player.raidProtectionExpiredAtLabel + "" + Utils.i18n("localize194");
            _loc_1 = Utils.i18n("localize195") + "" + "\n" + "" + Utils.i18n("localize196") + "" + "\n" + "{Utils.i18n(\'localize197\')";
            _loc_1 = !_player.raidLimitationExpired;
            _loc_1 = Utils.i18n("localize198") + ":" + _player.raidLimitationExpiredAtLabel;
            _loc_1 = Utils.i18n("localize199") + "" + "\n" + "" + Utils.i18n("localize200");
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

        public function get expiredAt() : String
        {
            return _expiredAt;
        }// end function

        private function loadReport() : void
        {
            sendEvent(LOAD_REPORT);
            return;
        }// end function

        private function selectTarget() : void
        {
            if (!raidLimitation)
            {
                sendEvent(LOAD_TARGET);
                raidSelectTargetWindow.init();
            }
            return;
        }// end function

        public function setRaidTarget() : void
        {
            if (raidSelectTargetWindow.loadCount == 2)
            {
                this.popupWindow(raidSelectTargetWindow, false);
                raidSelectTargetWindow.addEventListener(RaidSelectTargetWindow.TARGET_SELECT, startRaid);
            }
            return;
        }// end function

        public function set player(param1:PlayerVO) : void
        {
            _player = param1;
            return;
        }// end function

        private function get raidLimitation() : Boolean
        {
            return this._1414057796raidLimitation;
        }// end function

        private function set _250182200expiredAt(param1:String) : void
        {
            _expiredAt = param1;
            raidLimitation = _expiredAt != "";
            return;
        }// end function

        public function set raidLimitationExpirationLabel(param1:Text) : void
        {
            var _loc_2:* = this._1628869025raidLimitationExpirationLabel;
            if (_loc_2 !== param1)
            {
                this._1628869025raidLimitationExpirationLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "raidLimitationExpirationLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function set protectionExpirationLabel(param1:Text) : void
        {
            var _loc_2:* = this._1651706220protectionExpirationLabel;
            if (_loc_2 !== param1)
            {
                this._1651706220protectionExpirationLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "protectionExpirationLabel", _loc_2, param1));
            }
            return;
        }// end function

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        private function showConfirmWindow() : void
        {
            popupWindow(confirmRaidProtectionWindow);
            return;
        }// end function

        public function set expiredAt(param1:String) : void
        {
            var _loc_2:* = this.expiredAt;
            if (_loc_2 !== param1)
            {
                this._250182200expiredAt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expiredAt", _loc_2, param1));
            }
            return;
        }// end function

        public function get protectionExpirationLabel() : Text
        {
            return this._1651706220protectionExpirationLabel;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
