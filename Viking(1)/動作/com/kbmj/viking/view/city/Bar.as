package com.kbmj.viking.view.city
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class Bar extends CanvasWithPopUp implements IBindingClient
    {
        var _bindings:Array;
        var _watchers:Array;
        private var _1471415882_menu4:Class;
        private var _476548482cancelBtn:Button;
        private var _785412337cityBtn:VBox;
        private var _1471415884_menu2:Class;
        private var _604321667menuBar1:Image;
        private var _2117807052acceptBtn:Button;
        private var _604321664menuBar4:Image;
        private var _3016401base:Image;
        private var _1092677885homeBtn:Button;
        var _bindingsByDestination:Object;
        private var _embed_mxml__images_city_onmyo_practice_jpg_658910931:Class;
        private var _842377084confirmBtn:Button;
        private var _604321666menuBar2:Image;
        var _bindingsBeginWithWord:Object;
        private var _1165907430questBtn:VBox;
        private var _1471415883_menu3:Class;
        private var _1471415885_menu1:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _402398819completeBtn:Button;
        public static const BAR_QUEST_CLEAR:String = "barQuestClear";
        public static const QUEST_ACCEPT:String = "questAccept";
        public static const BAR_CANCEL_QUEST:String = "barCancelQuest";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const QUEST_ACCEPT_CANCEL:String = "questAcceptCancel";
        public static const BAR_ACCEPT_QUEST:String = "barAcceptQuest";
        public static const CHANGE_CHARACTER_FINISH:String = "changeCharacterFinish";
        public static const BAR_CONFIRM_QUEST:String = "barConfrimQuest";
        public static const PLAYER_RANK_UP:String = "playerRankUp";

        public function Bar()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {label:"Base", width:760, height:560, childDescriptors:[new UIComponentDescriptor({type:Image, id:"base", propertiesFactory:function () : Object
                        {
                            return {source:_embed_mxml__images_city_onmyo_practice_jpg_658910931};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar4", propertiesFactory:function () : Object
                        {
                            return {x:599, y:72};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar2", propertiesFactory:function () : Object
                        {
                            return {x:599, y:211};
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"menuBar1", propertiesFactory:function () : Object
                        {
                            return {x:599, y:293};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"questBtn", stylesFactory:function () : void
                        {
                            this.right = "17";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:84, enabled:true, childDescriptors:[new UIComponentDescriptor({type:Button, id:"acceptBtn", events:{click:"__acceptBtn_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"QuestAcceptBtn", buttonMode:true, enabled:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, id:"confirmBtn", events:{click:"__confirmBtn_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"QuestConfirmBtn", buttonMode:true, enabled:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, id:"cancelBtn", events:{click:"__cancelBtn_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"QuestCancelBtn", buttonMode:true, enabled:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, id:"completeBtn", events:{click:"__completeBtn_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"QuestCompleteBtn", buttonMode:true, enabled:true};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:VBox, id:"cityBtn", stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {y:227, enabled:true, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___Bar_Button5_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"MarketButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Bar_Button6_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"TempleButton", buttonMode:true};
                            }// end function
                            }), new UIComponentDescriptor({type:Button, events:{click:"___Bar_Button7_click"}, propertiesFactory:function () : Object
                            {
                                return {label:"", styleName:"ColosseumButton", buttonMode:true};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, id:"homeBtn", events:{click:"__homeBtn_click"}, stylesFactory:function () : void
                        {
                            this.right = "30";
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {label:"", styleName:"Home", y:310, buttonMode:true, enabled:true};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _embed_mxml__images_city_onmyo_practice_jpg_658910931 = Bar__embed_mxml__images_city_onmyo_practice_jpg_658910931;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 760;
            this.height = 560;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___Bar_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        public function get menuBar4() : Image
        {
            return this._604321664menuBar4;
        }// end function

        public function ___Bar_Button5_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_MARKET);
            return;
        }// end function

        public function get cancelBtn() : Button
        {
            return this._476548482cancelBtn;
        }// end function

        public function ___Bar_Button7_click(event:MouseEvent) : void
        {
            sendEvent(Viking.ENTER_LOBBY);
            return;
        }// end function

        public function set menuBar4(param1:Image) : void
        {
            var _loc_2:* = this._604321664menuBar4;
            if (_loc_2 !== param1)
            {
                this._604321664menuBar4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar4", _loc_2, param1));
            }
            return;
        }// end function

        private function set _menu1(param1:Class) : void
        {
            var _loc_2:* = this._1471415885_menu1;
            if (_loc_2 !== param1)
            {
                this._1471415885_menu1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu1", _loc_2, param1));
            }
            return;
        }// end function

        public function set cancelBtn(param1:Button) : void
        {
            var _loc_2:* = this._476548482cancelBtn;
            if (_loc_2 !== param1)
            {
                this._476548482cancelBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cancelBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function get menuBar1() : Image
        {
            return this._604321667menuBar1;
        }// end function

        public function get menuBar2() : Image
        {
            return this._604321666menuBar2;
        }// end function

        override public function initialize() : void
        {
            var target:Bar;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _Bar_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_BarWatcherSetupUtil");
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

        public function init() : void
        {
            return;
        }// end function

        public function onLeave(param1:String) : void
        {
            dispatchEvent(new Event(param1));
            return;
        }// end function

        public function set homeBtn(param1:Button) : void
        {
            var _loc_2:* = this._1092677885homeBtn;
            if (_loc_2 !== param1)
            {
                this._1092677885homeBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "homeBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function get confirmBtn() : Button
        {
            return this._842377084confirmBtn;
        }// end function

        public function get questBtn() : VBox
        {
            return this._1165907430questBtn;
        }// end function

        public function set base(param1:Image) : void
        {
            var _loc_2:* = this._3016401base;
            if (_loc_2 !== param1)
            {
                this._3016401base = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "base", _loc_2, param1));
            }
            return;
        }// end function

        private function set _menu4(param1:Class) : void
        {
            var _loc_2:* = this._1471415882_menu4;
            if (_loc_2 !== param1)
            {
                this._1471415882_menu4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu4", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Bar_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function __cancelBtn_click(event:MouseEvent) : void
        {
            sendEvent(BAR_CANCEL_QUEST);
            return;
        }// end function

        public function onVisit() : void
        {
            return;
        }// end function

        public function get acceptBtn() : Button
        {
            return this._2117807052acceptBtn;
        }// end function

        public function set menuBar2(param1:Image) : void
        {
            var _loc_2:* = this._604321666menuBar2;
            if (_loc_2 !== param1)
            {
                this._604321666menuBar2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar2", _loc_2, param1));
            }
            return;
        }// end function

        private function get _menu4() : Class
        {
            return this._1471415882_menu4;
        }// end function

        private function get _menu3() : Class
        {
            return this._1471415883_menu3;
        }// end function

        public function set menuBar1(param1:Image) : void
        {
            var _loc_2:* = this._604321667menuBar1;
            if (_loc_2 !== param1)
            {
                this._604321667menuBar1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "menuBar1", _loc_2, param1));
            }
            return;
        }// end function

        public function set questBtn(param1:VBox) : void
        {
            var _loc_2:* = this._1165907430questBtn;
            if (_loc_2 !== param1)
            {
                this._1165907430questBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function set completeBtn(param1:Button) : void
        {
            var _loc_2:* = this._402398819completeBtn;
            if (_loc_2 !== param1)
            {
                this._402398819completeBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "completeBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Bar_Button6_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_SHOW_TEMPLE);
            return;
        }// end function

        public function __completeBtn_click(event:MouseEvent) : void
        {
            sendEvent(BAR_QUEST_CLEAR);
            return;
        }// end function

        public function get base() : Image
        {
            return this._3016401base;
        }// end function

        private function _Bar_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _menu4;
            }// end function
            , function (param1:Object) : void
            {
                menuBar4.source = param1;
                return;
            }// end function
            , "menuBar4.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu2;
            }// end function
            , function (param1:Object) : void
            {
                menuBar2.source = param1;
                return;
            }// end function
            , "menuBar2.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return _menu1;
            }// end function
            , function (param1:Object) : void
            {
                menuBar1.source = param1;
                return;
            }// end function
            , "menuBar1.source");
            result[2] = binding;
            return result;
        }// end function

        private function get _menu2() : Class
        {
            return this._1471415884_menu2;
        }// end function

        private function _Bar_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _menu4;
            _loc_1 = _menu2;
            _loc_1 = _menu1;
            return;
        }// end function

        public function __acceptBtn_click(event:MouseEvent) : void
        {
            sendEvent(BAR_ACCEPT_QUEST);
            return;
        }// end function

        private function get _menu1() : Class
        {
            return this._1471415885_menu1;
        }// end function

        public function set cityBtn(param1:VBox) : void
        {
            var _loc_2:* = this._785412337cityBtn;
            if (_loc_2 !== param1)
            {
                this._785412337cityBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cityBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function get completeBtn() : Button
        {
            return this._402398819completeBtn;
        }// end function

        public function set menu1(param1:Class) : void
        {
            _menu1 = param1;
            return;
        }// end function

        public function __confirmBtn_click(event:MouseEvent) : void
        {
            sendEvent(BAR_CONFIRM_QUEST);
            return;
        }// end function

        public function set menu2(param1:Class) : void
        {
            _menu2 = param1;
            return;
        }// end function

        public function set menu3(param1:Class) : void
        {
            _menu3 = param1;
            return;
        }// end function

        public function set menu4(param1:Class) : void
        {
            _menu4 = param1;
            return;
        }// end function

        public function setButtonEnabled(param1:String) : void
        {
            switch(param1)
            {
                case "Accept":
                {
                    acceptBtn.enabled = true;
                    var _loc_2:Boolean = false;
                    completeBtn.enabled = false;
                    var _loc_2:* = _loc_2;
                    cancelBtn.enabled = _loc_2;
                    confirmBtn.enabled = _loc_2;
                    break;
                }
                case "Excuting":
                {
                    var _loc_2:Boolean = false;
                    completeBtn.enabled = false;
                    acceptBtn.enabled = _loc_2;
                    var _loc_2:Boolean = true;
                    cancelBtn.enabled = true;
                    confirmBtn.enabled = _loc_2;
                    break;
                }
                case "Complete":
                {
                    var _loc_2:Boolean = false;
                    cancelBtn.enabled = false;
                    acceptBtn.enabled = _loc_2;
                    var _loc_2:Boolean = true;
                    completeBtn.enabled = true;
                    confirmBtn.enabled = _loc_2;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function set acceptBtn(param1:Button) : void
        {
            var _loc_2:* = this._2117807052acceptBtn;
            if (_loc_2 !== param1)
            {
                this._2117807052acceptBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "acceptBtn", _loc_2, param1));
            }
            return;
        }// end function

        public function get cityBtn() : VBox
        {
            return this._785412337cityBtn;
        }// end function

        public function __homeBtn_click(event:MouseEvent) : void
        {
            sendEvent(Viking.CITY_ACTION_BACK_HOME);
            return;
        }// end function

        private function set _menu2(param1:Class) : void
        {
            var _loc_2:* = this._1471415884_menu2;
            if (_loc_2 !== param1)
            {
                this._1471415884_menu2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu2", _loc_2, param1));
            }
            return;
        }// end function

        public function set confirmBtn(param1:Button) : void
        {
            var _loc_2:* = this._842377084confirmBtn;
            if (_loc_2 !== param1)
            {
                this._842377084confirmBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmBtn", _loc_2, param1));
            }
            return;
        }// end function

        private function set _menu3(param1:Class) : void
        {
            var _loc_2:* = this._1471415883_menu3;
            if (_loc_2 !== param1)
            {
                this._1471415883_menu3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_menu3", _loc_2, param1));
            }
            return;
        }// end function

        public function onDisabled(param1:Boolean) : void
        {
            var _loc_2:* = param1;
            homeBtn.enabled = param1;
            var _loc_2:* = _loc_2;
            cityBtn.enabled = _loc_2;
            questBtn.enabled = _loc_2;
            return;
        }// end function

        public function get homeBtn() : Button
        {
            return this._1092677885homeBtn;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Bar._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
