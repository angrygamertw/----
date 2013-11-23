package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class MatchBattleDefenceReport extends PopupWindow implements IBindingClient
    {
        var _bindingsByDestination:Object;
        public var _MatchBattleDefenceReport_Text1:Text;
        public var _MatchBattleDefenceReport_Text2:Text;
        public var _MatchBattleDefenceReport_Text3:Text;
        private var _1075873300_swf_window:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _1641788370okButton:Image;
        var _watchers:Array;
        private var _1055338510_winCount:int = 0;
        var _bindings:Array;
        public var _MatchBattleDefenceReport_Image1:Image;
        private var _1665809106_swf_button:MovieClipLoaderAsset;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1468352367_point:int = 0;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function MatchBattleDefenceReport()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MatchBattleDefenceReport_Image1"}), new UIComponentDescriptor({type:Text, id:"_MatchBattleDefenceReport_Text1", propertiesFactory:function () : Object
                {
                    return {x:310, y:192, styleName:"PanelBaseTitle"};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_MatchBattleDefenceReport_Text2", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 18;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:230, y:230, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Text, id:"_MatchBattleDefenceReport_Text3", stylesFactory:function () : void
                {
                    this.textAlign = "center";
                    this.fontSize = 18;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:230, y:270, width:300, height:30};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"okButton", events:{click:"__okButton_click"}, propertiesFactory:function () : Object
                {
                    return {x:320, y:315};
                }// end function
                })]};
            }// end function
            });
            _1075873300_swf_window = new Viking.EmbedSwfWindowCommon();
            _1665809106_swf_button = new Viking.EmbedSwfButtonCommon();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___MatchBattleDefenceReport_PopupWindow1_creationComplete);
            return;
        }// end function

        private function _MatchBattleDefenceReport_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _swf_window;
            _loc_1 = Utils.i18n("matchBattleDefenceReportTitle");
            _loc_1 = Utils.i18n("matchBattleDefenceReportWinCount", _winCount);
            _loc_1 = Utils.i18n("matchBattleDefenceReportPoint", _point);
            _loc_1 = _swf_button;
            return;
        }// end function

        private function get _swf_window() : MovieClipLoaderAsset
        {
            return this._1075873300_swf_window;
        }// end function

        private function set _swf_window(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1075873300_swf_window;
            if (_loc_2 !== param1)
            {
                this._1075873300_swf_window = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_window", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MatchBattleDefenceReport_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function closeWindow() : void
        {
            onClose();
            return;
        }// end function

        public function init() : void
        {
            MovieClip(Loader(_swf_button.getChildAt(0)).content).gotoAndPlay("button_ok");
            MovieClip(Loader(_swf_window.getChildAt(0)).content).gotoAndPlay("center_400x180");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:MatchBattleDefenceReport;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MatchBattleDefenceReport_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_MatchBattleDefenceReportWatcherSetupUtil");
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

        public function set okButton(param1:Image) : void
        {
            var _loc_2:* = this._1641788370okButton;
            if (_loc_2 !== param1)
            {
                this._1641788370okButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "okButton", _loc_2, param1));
            }
            return;
        }// end function

        private function _MatchBattleDefenceReport_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Object
            {
                return _swf_window;
            }// end function
            , function (param1:Object) : void
            {
                _MatchBattleDefenceReport_Image1.source = param1;
                return;
            }// end function
            , "_MatchBattleDefenceReport_Image1.source");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("matchBattleDefenceReportTitle");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchBattleDefenceReport_Text1.text = param1;
                return;
            }// end function
            , "_MatchBattleDefenceReport_Text1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("matchBattleDefenceReportWinCount", _winCount);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchBattleDefenceReport_Text2.text = param1;
                return;
            }// end function
            , "_MatchBattleDefenceReport_Text2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("matchBattleDefenceReportPoint", _point);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MatchBattleDefenceReport_Text3.text = param1;
                return;
            }// end function
            , "_MatchBattleDefenceReport_Text3.text");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_button;
            }// end function
            , function (param1:Object) : void
            {
                okButton.source = param1;
                return;
            }// end function
            , "okButton.source");
            result[4] = binding;
            return result;
        }// end function

        private function get _point() : int
        {
            return this._1468352367_point;
        }// end function

        private function set _swf_button(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1665809106_swf_button;
            if (_loc_2 !== param1)
            {
                this._1665809106_swf_button = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_button", _loc_2, param1));
            }
            return;
        }// end function

        public function __okButton_click(event:MouseEvent) : void
        {
            closeWindow();
            return;
        }// end function

        public function setDefenceReport(param1:Object) : void
        {
            _winCount = param1.win_count;
            _point = param1.point;
            return;
        }// end function

        private function get _winCount() : int
        {
            return this._1055338510_winCount;
        }// end function

        public function get okButton() : Image
        {
            return this._1641788370okButton;
        }// end function

        private function set _point(param1:int) : void
        {
            var _loc_2:* = this._1468352367_point;
            if (_loc_2 !== param1)
            {
                this._1468352367_point = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_point", _loc_2, param1));
            }
            return;
        }// end function

        private function set _winCount(param1:int) : void
        {
            var _loc_2:* = this._1055338510_winCount;
            if (_loc_2 !== param1)
            {
                this._1055338510_winCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_winCount", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_button() : MovieClipLoaderAsset
        {
            return this._1665809106_swf_button;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
