package com.kbmj.viking.view.tactics
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class MatchMovieWindow extends PopupWindow implements IBindingClient
    {
        public var _MatchMovieWindow_Label2:Label;
        public var _MatchMovieWindow_Label1:Label;
        private var EmbedSwfWindowVs:Class;
        private var _1818888889_swf_vs:MovieClipLoaderAsset;
        var _bindingsByDestination:Object;
        private var _1649882530_tacticsParams:Object = null;
        private var _1818888257_swf_bg:MovieClipLoaderAsset;
        private var _825638613_targetPlayerUnit:Object = null;
        private var _1203669387_swf_name2:MovieClipLoaderAsset;
        public var _MatchMovieWindow_Image1:Image;
        public var _MatchMovieWindow_Image2:Image;
        public var _MatchMovieWindow_Image3:Image;
        private var EmbedSwfWindowBg:Class;
        public var _MatchMovieWindow_Image5:Image;
        public var _MatchMovieWindow_Image6:Image;
        public var _MatchMovieWindow_Image7:Image;
        public var _MatchMovieWindow_Image8:Image;
        private var EmbedSwfWindowName:Class;
        public var _MatchMovieWindow_Image4:Image;
        private var _1692144550targetUnitImage:Bitmap;
        private var _1685843119_swf_comment2:MovieClipLoaderAsset;
        private var _1203669386_swf_name1:MovieClipLoaderAsset;
        private var _1110776412_playerUnit:Object = null;
        var _watchers:Array;
        private var _2100126806playerUnitImage:Bitmap;
        public var _MatchMovieWindow_Text1:Text;
        public var _MatchMovieWindow_Text2:Text;
        private var EmbedSwfWindowComment:Class;
        var _bindingsBeginWithWord:Object;
        private var _892211805matchMovieCanvas:Canvas;
        var _bindings:Array;
        private var _1685843118_swf_comment1:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const WAIT_ENDED:String = "MatchMovieWindow/WaitEnded";
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const MOVIE_ENDED:String = "MatchMovieWindow/MovieEnded";
        public static const ANIMATION_ENDED:String = "MatchMovieWindow/AnimationEnded";

        public function MatchMovieWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"matchMovieCanvas", propertiesFactory:function () : Object
                {
                    return {x:0, y:0, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image1"}), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image2", propertiesFactory:function () : Object
                    {
                        return {x:-10, y:69};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image3", propertiesFactory:function () : Object
                    {
                        return {x:400, y:69};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image4", propertiesFactory:function () : Object
                    {
                        return {x:58, y:20};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image5", propertiesFactory:function () : Object
                    {
                        return {x:433, y:20};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_MatchMovieWindow_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:98, y:46, width:150};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_MatchMovieWindow_Label2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:473, y:46, width:150};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image6", propertiesFactory:function () : Object
                    {
                        return {x:25, y:440};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image7", propertiesFactory:function () : Object
                    {
                        return {x:400, y:440};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_MatchMovieWindow_Text1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:48, y:460, width:290, height:70};
                    }// end function
                    }), new UIComponentDescriptor({type:Text, id:"_MatchMovieWindow_Text2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:423, y:460, width:290, height:70};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MatchMovieWindow_Image8", propertiesFactory:function () : Object
                    {
                        return {x:263, y:215};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            EmbedSwfWindowBg = MatchMovieWindow_EmbedSwfWindowBg;
            EmbedSwfWindowName = MatchMovieWindow_EmbedSwfWindowName;
            EmbedSwfWindowComment = MatchMovieWindow_EmbedSwfWindowComment;
            EmbedSwfWindowVs = MatchMovieWindow_EmbedSwfWindowVs;
            _1818888257_swf_bg = new EmbedSwfWindowBg();
            _1203669386_swf_name1 = new EmbedSwfWindowName();
            _1203669387_swf_name2 = new EmbedSwfWindowName();
            _1685843118_swf_comment1 = new EmbedSwfWindowComment();
            _1685843119_swf_comment2 = new EmbedSwfWindowComment();
            _1818888889_swf_vs = new EmbedSwfWindowVs();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___MatchMovieWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _MatchMovieWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_bg;
            _loc_1 = playerUnitImage;
            _loc_1 = targetUnitImage;
            _loc_1 = _swf_name1;
            _loc_1 = _swf_name2;
            _loc_1 = _tacticsParams.playerName;
            _loc_1 = _tacticsParams.targetName;
            _loc_1 = _swf_comment1;
            _loc_1 = _swf_comment2;
            _loc_1 = _tacticsParams.comment;
            _loc_1 = _tacticsParams.targetComment;
            _loc_1 = _swf_vs;
            return;
        }// end function

        private function startTimer(event:Event) : void
        {
            var e:* = event;
            vibration();
            var timer:* = new Timer(4500, 1);
            timer.addEventListener(TimerEvent.TIMER, function (event:TimerEvent) : void
            {
                sendPopupEvent(WAIT_ENDED, tacticsParams);
                return;
            }// end function
            );
            timer.start();
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_vs.getChildAt(0)).content).gotoAndPlay(0);
            Loader(_swf_vs.getChildAt(0)).content.addEventListener("ENLARGE_END", startTimer);
            this.addEventListener(WAIT_ENDED, startTactics);
            return;
        }// end function

        private function set _swf_name2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1203669387_swf_name2;
            if (_loc_2 !== param1)
            {
                this._1203669387_swf_name2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_name2", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_name1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1203669386_swf_name1;
            if (_loc_2 !== param1)
            {
                this._1203669386_swf_name1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_name1", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_bg() : MovieClipLoaderAsset
        {
            return this._1818888257_swf_bg;
        }// end function

        public function set tacticsParams(param1:Object) : void
        {
            _tacticsParams = param1;
            _playerUnit = _tacticsParams.allyUnits[0];
            _targetPlayerUnit = _tacticsParams.enemyUnits[0];
            return;
        }// end function

        private function set _tacticsParams(param1:Object) : void
        {
            var _loc_2:* = this._1649882530_tacticsParams;
            if (_loc_2 !== param1)
            {
                this._1649882530_tacticsParams = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_tacticsParams", _loc_2, param1));
            }
            return;
        }// end function

        public function set matchMovieCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._892211805matchMovieCanvas;
            if (_loc_2 !== param1)
            {
                this._892211805matchMovieCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "matchMovieCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function set _playerUnit(param1:Object) : void
        {
            var _loc_2:* = this._1110776412_playerUnit;
            if (_loc_2 !== param1)
            {
                this._1110776412_playerUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function set targetUnitImage(param1:Bitmap) : void
        {
            var _loc_2:* = this._1692144550targetUnitImage;
            if (_loc_2 !== param1)
            {
                this._1692144550targetUnitImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetUnitImage", _loc_2, param1));
            }
            return;
        }// end function

        public function get playerUnitImage() : Bitmap
        {
            return this._2100126806playerUnitImage;
        }// end function

        private function set _swf_comment1(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1685843118_swf_comment1;
            if (_loc_2 !== param1)
            {
                this._1685843118_swf_comment1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_comment1", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_comment2(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1685843119_swf_comment2;
            if (_loc_2 !== param1)
            {
                this._1685843119_swf_comment2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_comment2", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_vs(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888889_swf_vs;
            if (_loc_2 !== param1)
            {
                this._1818888889_swf_vs = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_vs", _loc_2, param1));
            }
            return;
        }// end function

        private function startTactics(event:Event) : void
        {
            sendPopupEvent(MOVIE_ENDED, tacticsParams);
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function set _swf_bg(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1818888257_swf_bg;
            if (_loc_2 !== param1)
            {
                this._1818888257_swf_bg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_bg", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_name2() : MovieClipLoaderAsset
        {
            return this._1203669387_swf_name2;
        }// end function

        override public function initialize() : void
        {
            var target:MatchMovieWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MatchMovieWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_MatchMovieWindowWatcherSetupUtil");
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

        private function get _swf_name1() : MovieClipLoaderAsset
        {
            return this._1203669386_swf_name1;
        }// end function

        private function vibration() : void
        {
            var timer:Timer;
            timer = new Timer(33, 14);
            timer.addEventListener(TimerEvent.TIMER, function (event:TimerEvent) : void
            {
                if (timer.currentCount >= 14)
                {
                    matchMovieCanvas.x = 0;
                    matchMovieCanvas.y = 0;
                }
                else
                {
                    matchMovieCanvas.x = Utils.xRandomInt(-6, 6);
                    matchMovieCanvas.y = Utils.xRandomInt(-6, 6);
                }
                return;
            }// end function
            );
            timer.start();
            return;
        }// end function

        public function ___MatchMovieWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get tacticsParams() : Object
        {
            return _tacticsParams;
        }// end function

        private function get _tacticsParams() : Object
        {
            return this._1649882530_tacticsParams;
        }// end function

        public function get matchMovieCanvas() : Canvas
        {
            return this._892211805matchMovieCanvas;
        }// end function

        private function get _playerUnit() : Object
        {
            return this._1110776412_playerUnit;
        }// end function

        public function get targetUnitImage() : Bitmap
        {
            return this._1692144550targetUnitImage;
        }// end function

        private function set _targetPlayerUnit(param1:Object) : void
        {
            var _loc_2:* = this._825638613_targetPlayerUnit;
            if (_loc_2 !== param1)
            {
                this._825638613_targetPlayerUnit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_targetPlayerUnit", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerUnitImage(param1:Bitmap) : void
        {
            var _loc_2:* = this._2100126806playerUnitImage;
            if (_loc_2 !== param1)
            {
                this._2100126806playerUnitImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerUnitImage", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_comment1() : MovieClipLoaderAsset
        {
            return this._1685843118_swf_comment1;
        }// end function

        private function get _swf_comment2() : MovieClipLoaderAsset
        {
            return this._1685843119_swf_comment2;
        }// end function

        private function get _swf_vs() : MovieClipLoaderAsset
        {
            return this._1818888889_swf_vs;
        }// end function

        private function _MatchMovieWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_bg;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image1.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return playerUnitImage;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image2.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image2.source");
            result[1] = binding;
            binding = new Binding(this, function () : Object
            {
                return targetUnitImage;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image3.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image3.source");
            result[2] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_name1;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image4.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image4.source");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_name2;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image5.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image5.source");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _tacticsParams.playerName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchMovieWindow_Label1.text = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Label1.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _tacticsParams.targetName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchMovieWindow_Label2.text = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Label2.text");
            result[6] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_comment1;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image6.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image6.source");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_comment2;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image7.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image7.source");
            result[8] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _tacticsParams.comment;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchMovieWindow_Text1.text = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Text1.text");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _tacticsParams.targetComment;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchMovieWindow_Text2.text = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Text2.text");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_vs;
            }// end function
            , function (param1:Object) : void
            {
                _MatchMovieWindow_Image8.source = param1;
                return;
            }// end function
            , "_MatchMovieWindow_Image8.source");
            result[11] = binding;
            return result;
        }// end function

        private function get _targetPlayerUnit() : Object
        {
            return this._825638613_targetPlayerUnit;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
