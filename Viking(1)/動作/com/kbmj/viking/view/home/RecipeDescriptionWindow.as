package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class RecipeDescriptionWindow extends PopupWindow implements IBindingClient
    {
        public var _RecipeDescriptionWindow_Text1:Text;
        var _bindingsBeginWithWord:Object;
        private var _1948377661_description:String;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RecipeDescriptionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_RecipeDescriptionWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {x:200, y:60};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {width:100, x:110, y:250};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1948377661_description = new String();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            return;
        }// end function

        private function set _description(param1:String) : void
        {
            var _loc_2:* = this._1948377661_description;
            if (_loc_2 !== param1)
            {
                this._1948377661_description = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_description", _loc_2, param1));
            }
            return;
        }// end function

        private function _RecipeDescriptionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _description;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _RecipeDescriptionWindow_Text1.text = param1;
                return;
            }// end function
            , "_RecipeDescriptionWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:RecipeDescriptionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RecipeDescriptionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RecipeDescriptionWindowWatcherSetupUtil");
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

        private function get _description() : String
        {
            return this._1948377661_description;
        }// end function

        private function close() : void
        {
            PopUpManager.removePopUp(this);
            return;
        }// end function

        private function _RecipeDescriptionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _description;
            return;
        }// end function

        public function set description(param1:String) : void
        {
            _description = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
