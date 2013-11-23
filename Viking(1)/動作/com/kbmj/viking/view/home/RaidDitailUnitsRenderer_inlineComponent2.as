package com.kbmj.viking.view.home
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class RaidDitailUnitsRenderer_inlineComponent2 extends Canvas implements IBindingClient
    {
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _88844982outerDocument:RaidDitailUnitsRenderer;
        public var _RaidDitailUnitsRenderer_inlineComponent2_Label1:Label;
        public var _RaidDitailUnitsRenderer_inlineComponent2_Label2:Label;
        public var _RaidDitailUnitsRenderer_inlineComponent2_Label3:Label;
        public var _RaidDitailUnitsRenderer_inlineComponent2_Label4:Label;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RaidDitailUnitsRenderer_inlineComponent2()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_RaidDitailUnitsRenderer_inlineComponent2_Label1", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:10, height:30, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_RaidDitailUnitsRenderer_inlineComponent2_Label2", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:110, height:30, width:100, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_RaidDitailUnitsRenderer_inlineComponent2_Label3", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:180, height:30, width:100, mouseChildren:false};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_RaidDitailUnitsRenderer_inlineComponent2_Label4", stylesFactory:function () : void
                {
                    this.fontSize = 11;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:250, height:30, width:80, mouseChildren:false};
                }// end function
                })]};
            }// end function
            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        public function set outerDocument(param1:RaidDitailUnitsRenderer) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        private function _RaidDitailUnitsRenderer_inlineComponent2_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getLabel(data, "name") + "(" + outerDocument.getLabel(data, "job_name") + ")";
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidDitailUnitsRenderer_inlineComponent2_Label1.text = param1;
                return;
            }// end function
            , "_RaidDitailUnitsRenderer_inlineComponent2_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getLabel(data, "player_name");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidDitailUnitsRenderer_inlineComponent2_Label2.text = param1;
                return;
            }// end function
            , "_RaidDitailUnitsRenderer_inlineComponent2_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "Lv " + outerDocument.getLabel(data, "level");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidDitailUnitsRenderer_inlineComponent2_Label3.text = param1;
                return;
            }// end function
            , "_RaidDitailUnitsRenderer_inlineComponent2_Label3.text");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = "EXP " + outerDocument.getExp(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RaidDitailUnitsRenderer_inlineComponent2_Label4.text = param1;
                return;
            }// end function
            , "_RaidDitailUnitsRenderer_inlineComponent2_Label4.text");
            result[3] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:RaidDitailUnitsRenderer_inlineComponent2;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RaidDitailUnitsRenderer_inlineComponent2_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RaidDitailUnitsRenderer_inlineComponent2WatcherSetupUtil");
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

        private function _RaidDitailUnitsRenderer_inlineComponent2_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.getLabel(data, "name") + "(" + outerDocument.getLabel(data, "job_name") + ")";
            _loc_1 = outerDocument.getLabel(data, "player_name");
            _loc_1 = "Lv " + outerDocument.getLabel(data, "level");
            _loc_1 = "EXP " + outerDocument.getExp(data);
            return;
        }// end function

        public function get outerDocument() : RaidDitailUnitsRenderer
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            RaidDitailUnitsRenderer_inlineComponent2._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
