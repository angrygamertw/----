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

    public class HomeEstablishment extends CanvasWithPopUp implements IBindingClient
    {
        private var _622758348expLabelViewStack:ViewStack;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        public var _HomeEstablishment_Text1:Text;
        private var _1896677185windowLayer:Canvas;
        private var confirmIncrementMaxTasksCountWindow:ConfirmIncrementMaxTasksCountWindow;
        public var _HomeEstablishment_Text2:Text;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1722718208_player:PlayerVO;
        public static const INCREMENT_MAX_TASKS:String = NAME + "incrementMaxTasks";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const CLOSED_HOME_ESTABLISHMENT:String = NAME + "ClosedHomeEstablishment";
        public static const NAME:String = "HomeEstablishment";

        public function HomeEstablishment()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                {
                    return {x:50, y:150, width:500, childDescriptors:[new UIComponentDescriptor({type:VBox, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"expLabelViewStack", propertiesFactory:function () : Object
                        {
                            return {selectedIndex:0, width:500, childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_HomeEstablishment_Text1", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                })]};
                            }// end function
                            }), new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                            {
                                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_HomeEstablishment_Text2", stylesFactory:function () : void
                                {
                                    this.fontSize = 14;
                                    return;
                                }// end function
                                , propertiesFactory:function () : Object
                                {
                                    return {percentWidth:100};
                                }// end function
                                })]};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:Button, events:{click:"___HomeEstablishment_Button1_click"}, propertiesFactory:function () : Object
                        {
                            return {x:350, y:100, buttonMode:true, mouseChildren:false};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            confirmIncrementMaxTasksCountWindow = new ConfirmIncrementMaxTasksCountWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___HomeEstablishment_CanvasWithPopUp1_creationComplete);
            return;
        }// end function

        private function get _player() : PlayerVO
        {
            return this._1722718208_player;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function set player(param1:PlayerVO) : void
        {
            _player = param1;
            return;
        }// end function

        private function _HomeEstablishment_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("localize168");
            _loc_1 = Utils.i18n("localize169") + "" + _player.doubleExpExpiredAtLabel + " まで。";
            return;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function ___HomeEstablishment_CanvasWithPopUp1_creationComplete(event:FlexEvent) : void
        {
            init();
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

        public function init() : void
        {
            confirmIncrementMaxTasksCountWindow.addEventListener(ConfirmIncrementMaxTasksCountWindow.CONFIRMED, incrementMaxTasks);
            return;
        }// end function

        private function incrementMaxTasks(event:Event) : void
        {
            sendEvent(INCREMENT_MAX_TASKS);
            close();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HomeEstablishment;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeEstablishment_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeEstablishmentWatcherSetupUtil");
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

        public function get player() : PlayerVO
        {
            return _player;
        }// end function

        public function ___HomeEstablishment_Button1_click(event:MouseEvent) : void
        {
            confirmIncrementMaxTasks();
            return;
        }// end function

        public function get expLabelViewStack() : ViewStack
        {
            return this._622758348expLabelViewStack;
        }// end function

        public function set expLabelViewStack(param1:ViewStack) : void
        {
            var _loc_2:* = this._622758348expLabelViewStack;
            if (_loc_2 !== param1)
            {
                this._622758348expLabelViewStack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expLabelViewStack", _loc_2, param1));
            }
            return;
        }// end function

        private function _HomeEstablishment_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize168");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeEstablishment_Text1.text = param1;
                return;
            }// end function
            , "_HomeEstablishment_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize169") + "" + _player.doubleExpExpiredAtLabel + " まで。";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeEstablishment_Text2.text = param1;
                return;
            }// end function
            , "_HomeEstablishment_Text2.text");
            result[1] = binding;
            return result;
        }// end function

        private function close() : void
        {
            dispatchEvent(new PopupEvent(CLOSED_HOME_ESTABLISHMENT, {window:this}));
            return;
        }// end function

        private function confirmIncrementMaxTasks() : void
        {
            popupWindow(confirmIncrementMaxTasksCountWindow, false);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HomeEstablishment._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
