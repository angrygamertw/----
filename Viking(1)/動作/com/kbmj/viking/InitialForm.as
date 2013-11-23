package com.kbmj.viking
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class InitialForm extends CanvasWithPopUp implements IBindingClient
    {
        private var _1618067916errorLabel:TextArea;
        private var _1332067165backGroundLayer:Canvas;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _selectWeapon:String;
        private var _2095657228playerName:TextInput;
        private var _1376145637textCanvas:Canvas;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _900245826_errorMessage:String;
        private var _selectGender:int;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static const VIEW_INDEX_NAME:int = 0;
        private static const VIEW_INDEX_WEAPON:int = 1;
        private static const VIEW_INDEX_GENDER:int = 2;

        public function InitialForm()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:CanvasWithPopUp, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"backGroundLayer"}), new UIComponentDescriptor({type:Canvas, id:"textCanvas", propertiesFactory:function () : Object
                {
                    return {width:760, height:560, visible:false, childDescriptors:[new UIComponentDescriptor({type:TextArea, id:"errorLabel", stylesFactory:function () : void
                    {
                        this.color = 16711680;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {editable:false, x:185, y:385, width:250, height:18};
                    }// end function
                    }), new UIComponentDescriptor({type:TextInput, id:"playerName", events:{change:"__playerName_change"}, stylesFactory:function () : void
                    {
                        this.fontSize = 16;
                        return;
                    }// end function
                    , propertiesFactory:function () : Object
                    {
                        return {width:206, height:34, styleName:"NameTextArea", x:277, y:274};
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
            return;
        }// end function

        public function validateName() : void
        {
            var _loc_1:Array = [];
            if (playerName.text == "")
            {
                _loc_1.push(Utils.i18n("initialForm_name"));
            }
            var _loc_2:int = 0;
            while (_loc_2 < playerName.text.length)
            {
                
                if (playerName.text.charAt(_loc_2) == " " || playerName.text.charAt(_loc_2) == "　")
                {
                    _loc_1.push(Utils.i18n("initialForm_speace"));
                }
                if (playerName.text.charAt(_loc_2) == "\n" || playerName.text.charAt(_loc_2) == "\r")
                {
                    _loc_1.push(Utils.i18n("initialForm_break"));
                }
                if (playerName.text.charAt(_loc_2) == "\t")
                {
                    _loc_1.push(Utils.i18n("initialForm_tab"));
                }
                _loc_2++;
            }
            if (_loc_1.length > 0)
            {
                showError(_loc_1.join("\n"));
            }
            else
            {
                _errorMessage = "";
                dispatchEvent(new PopupEvent(Viking.INITIAL_FORM_ACTION_VALIDATE_NAME, {playerName:playerName.text}));
            }
            return;
        }// end function

        public function nameValidated() : void
        {
            var _loc_1:Object = {playerName:playerName.text};
            dispatchEvent(new PopupEvent(Viking.INITIAL_FORM_ACTION_SUBMIT, _loc_1));
            return;
        }// end function

        public function set backGroundLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1332067165backGroundLayer;
            if (_loc_2 !== param1)
            {
                this._1332067165backGroundLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "backGroundLayer", _loc_2, param1));
            }
            return;
        }// end function

        public function get textCanvas() : Canvas
        {
            return this._1376145637textCanvas;
        }// end function

        private function checkStr() : void
        {
            var _loc_3:int = 0;
            var _loc_1:String = "";
            var _loc_2:int = 0;
            while (_loc_2 < (playerName.text.length - 1))
            {
                
                if (playerName.text.charAt(_loc_2) != "\r" && playerName.text.charAt(_loc_2) != "\n")
                {
                    _loc_1 = _loc_1 + playerName.text.charAt(_loc_2);
                }
                _loc_2++;
            }
            _loc_1 = _loc_1 + playerName.text.charAt((playerName.text.length - 1));
            playerName.text = _loc_1;
            if (playerName.text.charAt((playerName.text.length - 1)) == "\r" || playerName.text.charAt((playerName.text.length - 1)) == "\n")
            {
                _loc_1 = "";
                _loc_3 = 0;
                while (_loc_3 < (playerName.text.length - 1))
                {
                    
                    _loc_1 = _loc_1 + playerName.text.charAt(_loc_3);
                    _loc_3++;
                }
                playerName.text = _loc_1;
                validateName();
            }
            return;
        }// end function

        override public function initialize() : void
        {
            var target:InitialForm;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _InitialForm_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_InitialFormWatcherSetupUtil");
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

        public function showError(param1:String) : void
        {
            _errorMessage = param1;
            return;
        }// end function

        public function get errorLabel() : TextArea
        {
            return this._1618067916errorLabel;
        }// end function

        private function _InitialForm_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = _errorMessage;
            return;
        }// end function

        private function submit() : void
        {
            var _loc_1:Object = {playerName:playerName.text};
            dispatchEvent(new PopupEvent(Viking.INITIAL_FORM_ACTION_SUBMIT, _loc_1));
            return;
        }// end function

        private function _InitialForm_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _errorMessage;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                errorLabel.text = param1;
                return;
            }// end function
            , "errorLabel.text");
            result[0] = binding;
            return result;
        }// end function

        public function get playerName() : TextInput
        {
            return this._2095657228playerName;
        }// end function

        public function selectGender(param1:int) : void
        {
            _selectGender = param1;
            submit();
            return;
        }// end function

        public function set textCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1376145637textCanvas;
            if (_loc_2 !== param1)
            {
                this._1376145637textCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "textCanvas", _loc_2, param1));
            }
            return;
        }// end function

        public function __playerName_change(event:Event) : void
        {
            checkStr();
            return;
        }// end function

        public function set errorLabel(param1:TextArea) : void
        {
            var _loc_2:* = this._1618067916errorLabel;
            if (_loc_2 !== param1)
            {
                this._1618067916errorLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "errorLabel", _loc_2, param1));
            }
            return;
        }// end function

        private function set _errorMessage(param1:String) : void
        {
            var _loc_2:* = this._900245826_errorMessage;
            if (_loc_2 !== param1)
            {
                this._900245826_errorMessage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_errorMessage", _loc_2, param1));
            }
            return;
        }// end function

        public function get backGroundLayer() : Canvas
        {
            return this._1332067165backGroundLayer;
        }// end function

        public function set playerName(param1:TextInput) : void
        {
            var _loc_2:* = this._2095657228playerName;
            if (_loc_2 !== param1)
            {
                this._2095657228playerName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerName", _loc_2, param1));
            }
            return;
        }// end function

        private function get _errorMessage() : String
        {
            return this._900245826_errorMessage;
        }// end function

        public function selectWeapon(param1:String) : void
        {
            _selectWeapon = param1;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            InitialForm._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
