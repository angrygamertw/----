package com.kbmj.viking.view.home
{
    import flash.filters.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.styles.*;

    public class HomeMapVacantMouseOver extends Box implements IBindingClient, IToolTip
    {
        var _bindings:Array;
        var _bindingsByDestination:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HomeMapVacantMouseOver()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
            {
                return {width:96, height:41, childDescriptors:[new UIComponentDescriptor({type:Box, stylesFactory:function () : void
                {
                    this.horizontalAlign = "center";
                    this.verticalAlign = "middle";
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {width:96, height:41, styleName:"HToolTip", childDescriptors:[new UIComponentDescriptor({type:Label, stylesFactory:function () : void
                    {
                        this.textAlign = "center";
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {text:"空き地", styleName:"VacantlotName"};
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
                this.dropShadowEnabled = true;
                return;
            }// end function
            ;
            this.width = 96;
            this.height = 41;
            return;
        }// end function

        public function set text(param1:String) : void
        {
            return;
        }// end function

        private function _HomeMapVacantMouseOver_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = [new DropShadowFilter(2, 45)];
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HomeMapVacantMouseOver;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _HomeMapVacantMouseOver_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_HomeMapVacantMouseOverWatcherSetupUtil");
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

        public function get text() : String
        {
            return null;
        }// end function

        private function _HomeMapVacantMouseOver_bindingsSetup() : Array
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
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
