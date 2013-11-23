package com.kbmj.viking.view.home
{
    import com.kbmj.viking.vo.home.*;
    import flash.filters.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HomeMapBuildingMouseOver extends Box implements IBindingClient, IToolTip
    {
        private var _waitUnits:Object;
        private var postUnit:Array;
        var _bindings:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _building:BuildingVO;
        public var _HomeMapBuildingMouseOver_Label1:Label;
        private var _634155888buidingLevel:String;
        var _watchers:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HomeMapBuildingMouseOver()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {styleName:"HToolTip", width:120, height:43, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HomeMapBuildingMouseOver_Label1", propertiesFactory:function () : Object
                        {
                            return {styleName:"OvStarName"};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            postUnit = new Array();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.addEventListener("creationComplete", ___HomeMapBuildingMouseOver_Box1_creationComplete);
            return;
        }// end function

        private function set _1430646092building(param1:BuildingVO) : void
        {
            _building = param1;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HomeMapBuildingMouseOver;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeMapBuildingMouseOver_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeMapBuildingMouseOverWatcherSetupUtil");
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

        private function _HomeMapBuildingMouseOver_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = [new DropShadowFilter(2, 45)];
            _loc_1 = building.buildingMasterVO.nameLabel + "     " + buidingLevel;
            return;
        }// end function

        public function ___HomeMapBuildingMouseOver_Box1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function set text(param1:String) : void
        {
            return;
        }// end function

        public function init() : void
        {
            var _loc_1:Object = null;
            for (_loc_1 in _waitUnits)
            {
                
                if (_waitUnits[_loc_1])
                {
                    postUnit.push(_waitUnits[_loc_1].name);
                }
            }
            if (!_building.buildingMasterVO.repeatable || _building.level >= _building.buildingMasterVO.maxLevel)
            {
                if (_building.buildingMasterId == 1 || _building.buildingMasterId == 15)
                {
                    buidingLevel = "";
                }
                else
                {
                    buidingLevel = "Lv." + _building.level;
                }
            }
            return;
        }// end function

        private function set buidingLevel(param1:String) : void
        {
            var _loc_2:* = this._634155888buidingLevel;
            if (_loc_2 !== param1)
            {
                this._634155888buidingLevel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buidingLevel", _loc_2, param1));
            }
            return;
        }// end function

        public function set building(param1:BuildingVO) : void
        {
            var _loc_2:* = this.building;
            if (_loc_2 !== param1)
            {
                this._1430646092building = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "building", _loc_2, param1));
            }
            return;
        }// end function

        public function get text() : String
        {
            return null;
        }// end function

        private function _HomeMapBuildingMouseOver_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : Array
            {
                return [new DropShadowFilter(2, 45)];
            }// end function
            , function (param1:Array) : void
            {
                this.filters = param1;
                return;
            }// end function
            , "this.filters");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = building.buildingMasterVO.nameLabel + "     " + buidingLevel;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _HomeMapBuildingMouseOver_Label1.text = param1;
                return;
            }// end function
            , "_HomeMapBuildingMouseOver_Label1.text");
            result[1] = binding;
            return result;
        }// end function

        private function get buidingLevel() : String
        {
            return this._634155888buidingLevel;
        }// end function

        public function get building() : BuildingVO
        {
            return _building;
        }// end function

        public function set waitUnits(param1:Object) : void
        {
            _waitUnits = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
