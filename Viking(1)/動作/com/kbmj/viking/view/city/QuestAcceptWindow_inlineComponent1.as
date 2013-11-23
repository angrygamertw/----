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

    public class QuestAcceptWindow_inlineComponent1 extends Grid implements IBindingClient
    {
        var _bindingsByDestination:Object;
        public var _QuestAcceptWindow_inlineComponent1_Label1:Label;
        public var _QuestAcceptWindow_inlineComponent1_Label2:Label;
        public var _QuestAcceptWindow_inlineComponent1_Label3:Label;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _88844982outerDocument:QuestAcceptWindow;
        public var _QuestAcceptWindow_inlineComponent1_Text1:Text;
        private var _3506583row1:GridRow;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function QuestAcceptWindow_inlineComponent1()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Grid, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:GridRow, id:"row1", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                    {
                        this.borderStyle = "solid";
                        this.borderColor = 13021835;
                        this.borderSides = "bottom right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_QuestAcceptWindow_inlineComponent1_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:45};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                    {
                        this.borderStyle = "solid";
                        this.borderColor = 13021835;
                        this.borderSides = "bottom";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                        {
                            return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_QuestAcceptWindow_inlineComponent1_Label2", events:{click:"___QuestAcceptWindow_inlineComponent1_Label2_click"}, stylesFactory:function () : void
                            {
                                this.fontSize = 14;
                                this.color = 12337210;
                                this.textDecoration = "underline";
                                return;
                            }// end function
                            , propertiesFactory:function () : Object
                            {
                                return {buttonMode:true, mouseChildren:false, width:285};
                            }// end function
                            })]};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:GridRow, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:GridItem, stylesFactory:function () : void
                    {
                        this.borderStyle = "solid";
                        this.borderColor = 13021835;
                        this.borderSides = "right";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Label, id:"_QuestAcceptWindow_inlineComponent1_Label3", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:45};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:GridItem, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_QuestAcceptWindow_inlineComponent1_Text1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {width:285};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
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
                this.horizontalGap = 0;
                this.verticalGap = 0;
                return;
            }// end function
            ;
            return;
        }// end function

        private function _QuestAcceptWindow_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = outerDocument.componrntToolTip(0);
            _loc_1 = outerDocument.getQuestName(data);
            _loc_1 = outerDocument.componrntToolTip(1);
            _loc_1 = outerDocument.componrntToolTip(2);
            _loc_1 = outerDocument.getClient(data);
            return;
        }// end function

        public function set outerDocument(param1:QuestAcceptWindow) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:QuestAcceptWindow_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _QuestAcceptWindow_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_city_QuestAcceptWindow_inlineComponent1WatcherSetupUtil");
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

        public function get row1() : GridRow
        {
            return this._3506583row1;
        }// end function

        private function _QuestAcceptWindow_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componrntToolTip(0);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_inlineComponent1_Label1.text = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_inlineComponent1_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getQuestName(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_inlineComponent1_Label2.text = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_inlineComponent1_Label2.text");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componrntToolTip(1);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_inlineComponent1_Label2.toolTip = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_inlineComponent1_Label2.toolTip");
            result[2] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.componrntToolTip(2);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_inlineComponent1_Label3.text = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_inlineComponent1_Label3.text");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = outerDocument.getClient(data);
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _QuestAcceptWindow_inlineComponent1_Text1.text = param1;
                return;
            }// end function
            , "_QuestAcceptWindow_inlineComponent1_Text1.text");
            result[4] = binding;
            return result;
        }// end function

        public function set row1(param1:GridRow) : void
        {
            var _loc_2:* = this._3506583row1;
            if (_loc_2 !== param1)
            {
                this._3506583row1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "row1", _loc_2, param1));
            }
            return;
        }// end function

        public function ___QuestAcceptWindow_inlineComponent1_Label2_click(event:MouseEvent) : void
        {
            outerDocument.changeChara(data);
            return;
        }// end function

        public function get outerDocument() : QuestAcceptWindow
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            QuestAcceptWindow_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
