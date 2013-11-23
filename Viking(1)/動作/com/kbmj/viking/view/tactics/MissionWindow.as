package com.kbmj.viking.view.tactics
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class MissionWindow extends Canvas implements IBindingClient
    {
        private var _113890six:Class;
        private var _embed_mxml__swf_battle_info_icon_skull_swf_121990859:Class;
        private var _14937150secondDigitImage:Image;
        private var _110339486three:Class;
        private var _347798826_stageName:String = "";
        private var _3735208zero:Class;
        private var numberImages:Array;
        var _watchers:Array;
        private var _110182one:Class;
        private var _109330445seven:Class;
        private var _embed_mxml__images_number_0_png_546287991:Class;
        private var _1483321448groupIcon:ViewStack;
        private var _embed_mxml__swf_battle_info_window_info_battle_swf_91087661:Class;
        var _bindingsByDestination:Object;
        private var _442443682_missionStatement:String = "";
        var _bindingsBeginWithWord:Object;
        private var _96505999eight:Class;
        private var _embed_mxml__images_number_1_png_546307659:Class;
        public var _MissionWindow_Label1:Label;
        public var _MissionWindow_Label2:Label;
        private var _3143346five:Class;
        var _bindings:Array;
        private var _3149094four:Class;
        private var _115276two:Class;
        private var _3381426nine:Class;
        private var _embed_mxml__swf_battle_info_icon_fort_swf_1355865291:Class;
        private var _1880094978firstDigitImage:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function MissionWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
            {
                return {width:320, height:70, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                {
                    return {source:_embed_mxml__swf_battle_info_window_info_battle_swf_91087661};
                }// end function
                }), new UIComponentDescriptor({type:ViewStack, id:"groupIcon", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {x:26, y:12, source:_embed_mxml__swf_battle_info_icon_fort_swf_1355865291};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Canvas, propertiesFactory:function () : Object
                    {
                        return {childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:function () : Object
                        {
                            return {x:26, y:12, source:_embed_mxml__swf_battle_info_icon_skull_swf_121990859};
                        }// end function
                        })]};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_MissionWindow_Label1", stylesFactory:function () : void
                {
                    this.fontSize = 12;
                    this.color = 4278190080;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:46, y:13};
                }// end function
                }), new UIComponentDescriptor({type:Label, id:"_MissionWindow_Label2", stylesFactory:function () : void
                {
                    this.fontSize = 10;
                    this.color = 4278190080;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {x:26, y:32};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"secondDigitImage", propertiesFactory:function () : Object
                {
                    return {x:251, y:25, source:_embed_mxml__images_number_0_png_546287991};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"firstDigitImage", propertiesFactory:function () : Object
                {
                    return {x:270, y:25, source:_embed_mxml__images_number_1_png_546307659};
                }// end function
                })]};
            }// end function
            });
            _3735208zero = MissionWindow_zero;
            _110182one = MissionWindow_one;
            _115276two = MissionWindow_two;
            _110339486three = MissionWindow_three;
            _3149094four = MissionWindow_four;
            _3143346five = MissionWindow_five;
            _113890six = MissionWindow_six;
            _109330445seven = MissionWindow_seven;
            _96505999eight = MissionWindow_eight;
            _3381426nine = MissionWindow_nine;
            numberImages = [zero, one, two, three, four, five, six, seven, eight, nine];
            _embed_mxml__images_number_0_png_546287991 = MissionWindow__embed_mxml__images_number_0_png_546287991;
            _embed_mxml__images_number_1_png_546307659 = MissionWindow__embed_mxml__images_number_1_png_546307659;
            _embed_mxml__swf_battle_info_icon_fort_swf_1355865291 = MissionWindow__embed_mxml__swf_battle_info_icon_fort_swf_1355865291;
            _embed_mxml__swf_battle_info_icon_skull_swf_121990859 = MissionWindow__embed_mxml__swf_battle_info_icon_skull_swf_121990859;
            _embed_mxml__swf_battle_info_window_info_battle_swf_91087661 = MissionWindow__embed_mxml__swf_battle_info_window_info_battle_swf_91087661;
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 320;
            this.height = 70;
            return;
        }// end function

        public function set secondDigitImage(param1:Image) : void
        {
            var _loc_2:* = this._14937150secondDigitImage;
            if (_loc_2 !== param1)
            {
                this._14937150secondDigitImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "secondDigitImage", _loc_2, param1));
            }
            return;
        }// end function

        public function set missionStatement(param1:String) : void
        {
            _missionStatement = param1;
            return;
        }// end function

        private function get four() : Class
        {
            return this._3149094four;
        }// end function

        private function get six() : Class
        {
            return this._113890six;
        }// end function

        override public function initialize() : void
        {
            var target:MissionWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MissionWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_tactics_MissionWindowWatcherSetupUtil");
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

        private function set five(param1:Class) : void
        {
            var _loc_2:* = this._3143346five;
            if (_loc_2 !== param1)
            {
                this._3143346five = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "five", _loc_2, param1));
            }
            return;
        }// end function

        private function _MissionWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _stageName;
            _loc_1 = _missionStatement;
            return;
        }// end function

        private function get seven() : Class
        {
            return this._109330445seven;
        }// end function

        private function get three() : Class
        {
            return this._110339486three;
        }// end function

        public function get groupIcon() : ViewStack
        {
            return this._1483321448groupIcon;
        }// end function

        private function get _missionStatement() : String
        {
            return this._442443682_missionStatement;
        }// end function

        private function set two(param1:Class) : void
        {
            var _loc_2:* = this._115276two;
            if (_loc_2 !== param1)
            {
                this._115276two = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "two", _loc_2, param1));
            }
            return;
        }// end function

        private function set seven(param1:Class) : void
        {
            var _loc_2:* = this._109330445seven;
            if (_loc_2 !== param1)
            {
                this._109330445seven = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "seven", _loc_2, param1));
            }
            return;
        }// end function

        public function set groupIcon(param1:ViewStack) : void
        {
            var _loc_2:* = this._1483321448groupIcon;
            if (_loc_2 !== param1)
            {
                this._1483321448groupIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "groupIcon", _loc_2, param1));
            }
            return;
        }// end function

        private function get eight() : Class
        {
            return this._96505999eight;
        }// end function

        private function get five() : Class
        {
            return this._3143346five;
        }// end function

        private function set eight(param1:Class) : void
        {
            var _loc_2:* = this._96505999eight;
            if (_loc_2 !== param1)
            {
                this._96505999eight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "eight", _loc_2, param1));
            }
            return;
        }// end function

        private function get zero() : Class
        {
            return this._3735208zero;
        }// end function

        private function set nine(param1:Class) : void
        {
            var _loc_2:* = this._3381426nine;
            if (_loc_2 !== param1)
            {
                this._3381426nine = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nine", _loc_2, param1));
            }
            return;
        }// end function

        private function get nine() : Class
        {
            return this._3381426nine;
        }// end function

        private function set three(param1:Class) : void
        {
            var _loc_2:* = this._110339486three;
            if (_loc_2 !== param1)
            {
                this._110339486three = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "three", _loc_2, param1));
            }
            return;
        }// end function

        private function set six(param1:Class) : void
        {
            var _loc_2:* = this._113890six;
            if (_loc_2 !== param1)
            {
                this._113890six = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "six", _loc_2, param1));
            }
            return;
        }// end function

        public function get secondDigitImage() : Image
        {
            return this._14937150secondDigitImage;
        }// end function

        private function set _missionStatement(param1:String) : void
        {
            var _loc_2:* = this._442443682_missionStatement;
            if (_loc_2 !== param1)
            {
                this._442443682_missionStatement = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_missionStatement", _loc_2, param1));
            }
            return;
        }// end function

        private function _MissionWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _stageName;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MissionWindow_Label1.text = param1;
                return;
            }// end function
            , "_MissionWindow_Label1.text");
            result[0] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _missionStatement;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MissionWindow_Label2.text = param1;
                return;
            }// end function
            , "_MissionWindow_Label2.text");
            result[1] = binding;
            return result;
        }// end function

        private function set zero(param1:Class) : void
        {
            var _loc_2:* = this._3735208zero;
            if (_loc_2 !== param1)
            {
                this._3735208zero = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "zero", _loc_2, param1));
            }
            return;
        }// end function

        private function get _stageName() : String
        {
            return this._347798826_stageName;
        }// end function

        public function set stageName(param1:String) : void
        {
            _stageName = param1;
            return;
        }// end function

        private function set one(param1:Class) : void
        {
            var _loc_2:* = this._110182one;
            if (_loc_2 !== param1)
            {
                this._110182one = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "one", _loc_2, param1));
            }
            return;
        }// end function

        private function set _stageName(param1:String) : void
        {
            var _loc_2:* = this._347798826_stageName;
            if (_loc_2 !== param1)
            {
                this._347798826_stageName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_stageName", _loc_2, param1));
            }
            return;
        }// end function

        private function get one() : Class
        {
            return this._110182one;
        }// end function

        private function get two() : Class
        {
            return this._115276two;
        }// end function

        private function set four(param1:Class) : void
        {
            var _loc_2:* = this._3149094four;
            if (_loc_2 !== param1)
            {
                this._3149094four = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "four", _loc_2, param1));
            }
            return;
        }// end function

        public function set turn(param1:int) : void
        {
            var _loc_2:* = param1 > 9 ? (param1 % 10) : (param1);
            var _loc_3:* = param1 > 9 ? (param1 / 10) : (0);
            firstDigitImage.source = numberImages[_loc_2];
            secondDigitImage.source = numberImages[_loc_3];
            return;
        }// end function

        public function set firstDigitImage(param1:Image) : void
        {
            var _loc_2:* = this._1880094978firstDigitImage;
            if (_loc_2 !== param1)
            {
                this._1880094978firstDigitImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstDigitImage", _loc_2, param1));
            }
            return;
        }// end function

        public function get firstDigitImage() : Image
        {
            return this._1880094978firstDigitImage;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
