package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidReportDitail extends PopupWindow implements IBindingClient
    {
        private var _1805323463enemyUnits:RaidDitailUnitsRenderer;
        private var _1773949523_report:Object;
        private var _embed_mxml__swf_battle_report_window_report_swf_144807557:Class;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _1297054648_attackUnits:Array;
        private var _1939032753_resultDitail:String;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _RaidReportDitail_Text1:Text;
        private var _1499661603myUnits:RaidDitailUnitsRenderer;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        public var _RaidReportDitail_Image2:Image;
        private var _1774044476_result:String;
        public var _RaidReportDitail_Label1:Label;
        public var _RaidReportDitail_Label2:Label;
        private var _1969791673_playerVO:PlayerVO;
        public var _RaidReportDitail_Label4:Label;
        public var _RaidReportDitail_Label5:Label;
        public var _RaidReportDitail_Label6:Label;
        public var _RaidReportDitail_Label7:Label;
        public var _RaidReportDitail_Label8:Label;
        public var _RaidReportDitail_Label3:Label;
        var _bindings:Array;
        private var _770321134_defenseUnits:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const REPORT_DITAIL_CLOSE:String = "reportDitailClose";
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidReportDitail()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Text, id:"_RaidReportDitail_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:330, y:80};
                }// end function
                }), new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_battle_report_window_report_swf_144807557, width:705};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {x:20, y:70, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label1", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:0, y:50, width:600, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label2", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:110, y:80, width:300, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label3", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:110, y:100, width:300, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label4", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:110, y:120, width:300, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label5", stylesFactory:function () : void
                    {
                        this.fontSize = 20;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:430, y:90, width:300, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label6", stylesFactory:function () : void
                    {
                        this.fontSize = 14;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:430, y:120, width:300, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label7", stylesFactory:function () : void
                    {
                        this.fontSize = 16;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:155, y:140, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:Label, id:"_RaidReportDitail_Label8", stylesFactory:function () : void
                    {
                        this.fontSize = 16;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {x:570, y:148, mouseChildren:false};
                    }// end function
                    }), new UIComponentDescriptor({type:RaidDitailUnitsRenderer, id:"myUnits", propertiesFactory:function () : Object
                    {
                        return {x:20, y:200};
                    }// end function
                    }), new UIComponentDescriptor({type:RaidDitailUnitsRenderer, id:"enemyUnits", propertiesFactory:function () : Object
                    {
                        return {x:380, y:200};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"_RaidReportDitail_Image2", events:{click:"___RaidReportDitail_Image2_click"}, propertiesFactory:function () : Object
                {
                    return {x:325, y:495};
                }// end function
                })]};
            }// end function
            });
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _1773949523_report = new Object();
            _1774044476_result = new String();
            _1939032753_resultDitail = new String();
            _1297054648_attackUnits = new Array();
            _770321134_defenseUnits = new Array();
            _1969791673_playerVO = new PlayerVO();
            _embed_mxml__swf_battle_report_window_report_swf_144807557 = RaidReportDitail__embed_mxml__swf_battle_report_window_report_swf_144807557;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___RaidReportDitail_PopupWindow1_creationComplete);
            return;
        }// end function

        private function get _report() : Object
        {
            return this._1773949523_report;
        }// end function

        private function closeDitailReport() : void
        {
            myUnits.removeImage();
            enemyUnits.removeImage();
            sendEvent(REPORT_DITAIL_CLOSE);
            onClose();
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

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        public function getEnemyName(param1:Object) : String
        {
            return !param1.isTarget ? (param1.target_player_name) : (param1.player_name);
        }// end function

        private function get _defenseUnits() : Array
        {
            return this._770321134_defenseUnits;
        }// end function

        public function set enemyUnits(param1:RaidDitailUnitsRenderer) : void
        {
            var _loc_2:* = this._1805323463enemyUnits;
            if (_loc_2 !== param1)
            {
                this._1805323463enemyUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enemyUnits", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RaidReportDitail;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidReportDitail_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidReportDitailWatcherSetupUtil");
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

        public function ___RaidReportDitail_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            comp();
            return;
        }// end function

        private function comp() : void
        {
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            return;
        }// end function

        private function set _resultDitail(param1:String) : void
        {
            var _loc_2:* = this._1939032753_resultDitail;
            if (_loc_2 !== param1)
            {
                this._1939032753_resultDitail = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_resultDitail", _loc_2, param1));
            }
            return;
        }// end function

        public function getTargetPointText(param1:Object) : String
        {
            var _loc_2:* = param1.type == "colonyReport" ? (param1.colony_name) : (param1.topography_name);
            return _loc_2 ? (_loc_2) : ("");
        }// end function

        public function init(param1:Object, param2:PlayerVO) : void
        {
            this.report = param1;
            this.playerVO = param2;
            return;
        }// end function

        public function getTitle(param1:Object, param2:PlayerVO) : String
        {
            var _loc_3:String = "";
            var _loc_4:Array = ["", Utils.i18n("generalFactionNameBlueDragon"), Utils.i18n("generalFactionNameSuzaku"), Utils.i18n("generalFactionNameWhiteTiger"), Utils.i18n("generalFactionNameTortoise")];
            var _loc_5:* = param1.object_id == 2 || param1.guild_name ? (Utils.i18n("generalAtack")) : (Utils.i18n("generalInvasion"));
            if (param1.player_name != param2.playerName && param1.target_player_name != param2.playerName && !param1.colony_name)
            {
                _loc_3 = Utils.i18n("reportGuildMember");
                if (param2.guild.id == param1.guild_id)
                {
                    _loc_3 = _loc_3 + (param1.player_name + "(" + Utils.i18n("localize202") + ": " + param1.playerHomePoint.x + "," + param1.playerHomePoint.y + ")");
                    _loc_3 = _loc_3 + (param1.target_player_name + "(" + Utils.i18n("localize202") + ": " + param1.targetHomePoint.x + "," + param1.targetHomePoint.y + ")" + Utils.i18n("reportRaidOffense", _loc_5));
                }
                else
                {
                    _loc_3 = _loc_3 + (param1.target_player_name + "(" + Utils.i18n("localize202") + ": " + param1.targetHomePoint.x + "," + param1.targetHomePoint.y + ")");
                    _loc_3 = _loc_3 + (param1.player_name + "(" + Utils.i18n("localize202") + ": " + param1.playerHomePoint.x + "," + param1.playerHomePoint.y + ")" + Utils.i18n("reportRaidDefense", _loc_5));
                }
            }
            else if (!param1.isTarget && param1.targetHomePoint)
            {
                _loc_3 = param1.target_player_name + "(" + Utils.i18n("localize202") + ": " + param1.targetHomePoint.x + "," + param1.targetHomePoint.y + ")" + Utils.i18n("reportRaidOffense", _loc_5);
            }
            else
            {
                _loc_3 = param1.player_name + "(" + Utils.i18n("localize202") + ": " + param1.playerHomePoint.x + "," + param1.playerHomePoint.y + ")" + Utils.i18n("reportRaidDefense", _loc_5);
            }
            return _loc_3;
        }// end function

        public function get myUnits() : RaidDitailUnitsRenderer
        {
            return this._1499661603myUnits;
        }// end function

        private function set _attackUnits(param1:Array) : void
        {
            var _loc_2:* = this._1297054648_attackUnits;
            if (_loc_2 !== param1)
            {
                this._1297054648_attackUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_attackUnits", _loc_2, param1));
            }
            return;
        }// end function

        private function set _report(param1:Object) : void
        {
            var _loc_2:* = this._1773949523_report;
            if (_loc_2 !== param1)
            {
                this._1773949523_report = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_report", _loc_2, param1));
            }
            return;
        }// end function

        public function set playerVO(param1:PlayerVO) : void
        {
            _playerVO = param1;
            return;
        }// end function

        private function get _resultDitail() : String
        {
            return this._1939032753_resultDitail;
        }// end function

        private function get _playerVO() : PlayerVO
        {
            return this._1969791673_playerVO;
        }// end function

        public function get report() : Object
        {
            return _report;
        }// end function

        private function get _result() : String
        {
            return this._1774044476_result;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function sortUnit(param1:Array, param2:String) : Array
        {
            var _loc_4:Object = null;
            var _loc_3:* = new Array();
            for each (_loc_4 in param1 as Array)
            {
                
                if (_loc_4 && _loc_4.player_name == param2)
                {
                    _loc_3.unshift(_loc_4);
                    continue;
                }
                _loc_3.push(_loc_4);
            }
            return _loc_3;
        }// end function

        public function set myUnits(param1:RaidDitailUnitsRenderer) : void
        {
            var _loc_2:* = this._1499661603myUnits;
            if (_loc_2 !== param1)
            {
                this._1499661603myUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "myUnits", _loc_2, param1));
            }
            return;
        }// end function

        public function get enemyUnits() : RaidDitailUnitsRenderer
        {
            return this._1805323463enemyUnits;
        }// end function

        public function getMyName(param1:Object) : String
        {
            return param1.type == "colonyReport" ? (param1.guild_name) : (param1.isTarget ? (param1.target_player_name) : (param1.player_name));
        }// end function

        private function get _attackUnits() : Array
        {
            return this._1297054648_attackUnits;
        }// end function

        public function getTargetText(param1:Object) : String
        {
            var _loc_2:* = param1.type == "colonyReport" ? (param1.guild_name) : (param1.object_name);
            return _loc_2 ? (_loc_2) : ("");
        }// end function

        private function set _defenseUnits(param1:Array) : void
        {
            var _loc_2:* = this._770321134_defenseUnits;
            if (_loc_2 !== param1)
            {
                this._770321134_defenseUnits = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_defenseUnits", _loc_2, param1));
            }
            return;
        }// end function

        public function ___RaidReportDitail_Image2_click(event:MouseEvent) : void
        {
            closeDitailReport();
            return;
        }// end function

        public function getResultText(param1:Boolean) : String
        {
            return param1 ? (Utils.i18n("localize107")) : (Utils.i18n("localize213"));
        }// end function

        public function set report(param1:Object) : void
        {
            _report = new Object();
            _report = param1;
            _result = "";
            _resultDitail = "";
            switch(param1.status)
            {
                case 1:
                {
                    break;
                }
                case 2:
                {
                    break;
                }
                case 3:
                {
                    break;
                }
                case 4:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            switch(param1.status)
            {
                case 1:
                {
                    break;
                }
                case 2:
                {
                    break;
                }
                case 3:
                {
                    break;
                }
                case 4:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            _defenseUnits = sortUnit(param1.enemy_units, param1.target_player_name);
            _attackUnits = sortUnit(param1.ally_units, param1.player_name);
            myUnits.setUnits(param1.isTarget ? (_defenseUnits) : (_attackUnits), true);
            enemyUnits.setUnits(param1.isTarget ? (_attackUnits) : (_defenseUnits), false);
            return;
        }// end function

        private function set _playerVO(param1:PlayerVO) : void
        {
            var _loc_2:* = this._1969791673_playerVO;
            if (_loc_2 !== param1)
            {
                this._1969791673_playerVO = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_playerVO", _loc_2, param1));
            }
            return;
        }// end function

        public function getFinishTime(param1:Object) : String
        {
            return param1.finished_at ? (param1.finished_at) : ("");
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidReportDitail_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize214");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Text1.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getTitle(_report, _playerVO);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label1.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label1.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize215") + "：" + getFinishTime(_report);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label2.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label2.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize216") + "：" + getTargetPointText(_report);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label3.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("localize217") + "：" + getTargetText(_report);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label4.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label4.text");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _result;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label5.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label5.text");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _resultDitail;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label6.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label6.text");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getMyName(_report);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label7.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label7.text");
            result[7] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = getEnemyName(_report);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidReportDitail_Label8.text = param1;
                return;
            }// end function
            , "_RaidReportDitail_Label8.text");
            result[8] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _RaidReportDitail_Image2.source = param1;
                return;
            }// end function
            , "_RaidReportDitail_Image2.source");
            result[9] = binding;
            return result;
        }// end function

        private function _RaidReportDitail_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("localize214");
            _loc_1 = getTitle(_report, _playerVO);
            _loc_1 = Utils.i18n("localize215") + "：" + getFinishTime(_report);
            _loc_1 = Utils.i18n("localize216") + "：" + getTargetPointText(_report);
            _loc_1 = Utils.i18n("localize217") + "：" + getTargetText(_report);
            _loc_1 = _result;
            _loc_1 = _resultDitail;
            _loc_1 = getMyName(_report);
            _loc_1 = getEnemyName(_report);
            _loc_1 = _swf_close;
            return;
        }// end function

        private function set _result(param1:String) : void
        {
            var _loc_2:* = this._1774044476_result;
            if (_loc_2 !== param1)
            {
                this._1774044476_result = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_result", _loc_2, param1));
            }
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RaidReportDitail._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
