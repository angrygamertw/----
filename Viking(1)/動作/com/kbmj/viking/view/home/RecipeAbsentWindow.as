package com.kbmj.viking.view.home
{
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class RecipeAbsentWindow extends PopupWindow implements IBindingClient
    {
        private var _1948377661_description:String;
        private var _embed_mxml__images_home_st_btn_delcancel_off_png_818309943:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _embed_mxml__images_home_st_btn_delcancel_on_png_138482313:Class;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _RecipeAbsentWindow_Text1:Text;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function RecipeAbsentWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_RecipeAbsentWindow_Text1", propertiesFactory:function () : Object
                    {
                        return {x:200, y:60};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {width:100, x:110, y:250, childDescriptors:[new UIComponentDescriptor({type:Button, events:{click:"___RecipeAbsentWindow_Button1_click"}, stylesFactory:function () : void
                        {
                            this.overSkin = _embed_mxml__images_home_st_btn_delcancel_on_png_138482313;
                            this.upSkin = _embed_mxml__images_home_st_btn_delcancel_off_png_818309943;
                            this.downSkin = _embed_mxml__images_home_st_btn_delcancel_on_png_138482313;
                            return;
                        }// end function
                        , propertiesFactory:function () : Object
                        {
                            return {buttonMode:true, mouseChildren:false};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _1948377661_description = new String();
            _embed_mxml__images_home_st_btn_delcancel_off_png_818309943 = RecipeAbsentWindow__embed_mxml__images_home_st_btn_delcancel_off_png_818309943;
            _embed_mxml__images_home_st_btn_delcancel_on_png_138482313 = RecipeAbsentWindow__embed_mxml__images_home_st_btn_delcancel_on_png_138482313;
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

        private function _RecipeAbsentWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _description;
            return;
        }// end function

        private function _RecipeAbsentWindow_bindingsSetup() : Array
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
                _RecipeAbsentWindow_Text1.text = param1;
                return;
            }// end function
            , "_RecipeAbsentWindow_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        public function ___RecipeAbsentWindow_Button1_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:RecipeAbsentWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _RecipeAbsentWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_RecipeAbsentWindowWatcherSetupUtil");
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
