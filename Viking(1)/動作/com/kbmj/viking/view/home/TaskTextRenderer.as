package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.vo.home.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class TaskTextRenderer extends HBox implements IBindingClient
    {
        private var _1770474081buttonStyle:String;
        private var _410147758taskText:String;
        var _watchers:Array;
        public var _TaskTextRenderer_Text1:Text;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _1417632950_incrementable:Boolean;
        private var _1205943177_swf_power:MovieClipLoaderAsset;
        private var _1613080980incrementMaxTaskButton:Image;
        var _bindings:Array;
        private var _115042637_isTaskView:Boolean;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _562912778finishTaskButton:Button;
        private var taskVO:TaskVO;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static var buttonStyles:Array = ["FinishTask50Button", "FinishTask100Button", "FinishTask200Button"];

        public function TaskTextRenderer()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"_TaskTextRenderer_Text1", stylesFactory:function () : void
                {
                    this.color = 5321025;
                    return;
                }// end function
                , propertiesFactory:function () : Object
                {
                    return {styleName:"InfoTxt", width:300, height:40};
                }// end function
                }), new UIComponentDescriptor({type:Button, id:"finishTaskButton", events:{click:"__finishTaskButton_click"}, propertiesFactory:function () : Object
                {
                    return {buttonMode:true};
                }// end function
                }), new UIComponentDescriptor({type:Image, id:"incrementMaxTaskButton", events:{click:"__incrementMaxTaskButton_click"}, propertiesFactory:function () : Object
                {
                    return {buttonMode:true};
                }// end function
                })]};
            }// end function
            });
            _1205943177_swf_power = new Viking.EmbedSwfButtonPower();
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
                this.verticalAlign = "middle";
                this.backgroundAlpha = 0;
                return;
            }// end function
            ;
            this.percentWidth = 100;
            this.verticalScrollPolicy = "off";
            this.horizontalScrollPolicy = "off";
            this.addEventListener("creationComplete", ___TaskTextRenderer_HBox1_creationComplete);
            return;
        }// end function

        public function ___TaskTextRenderer_HBox1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function get finishTaskButton() : Button
        {
            return this._562912778finishTaskButton;
        }// end function

        override public function initialize() : void
        {
            var target:TaskTextRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _TaskTextRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_TaskTextRendererWatcherSetupUtil");
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

        public function set finishTaskButton(param1:Button) : void
        {
            var _loc_2:* = this._562912778finishTaskButton;
            if (_loc_2 !== param1)
            {
                this._562912778finishTaskButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "finishTaskButton", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_power(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1205943177_swf_power;
            if (_loc_2 !== param1)
            {
                this._1205943177_swf_power = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_power", _loc_2, param1));
            }
            return;
        }// end function

        private function set _incrementable(param1:Boolean) : void
        {
            var _loc_2:* = this._1417632950_incrementable;
            if (_loc_2 !== param1)
            {
                this._1417632950_incrementable = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_incrementable", _loc_2, param1));
            }
            return;
        }// end function

        private function init() : void
        {
            Loader(_swf_power.getChildAt(0)).contentLoaderInfo.addEventListener(Event.COMPLETE, initButton);
            return;
        }// end function

        private function get _swf_power() : MovieClipLoaderAsset
        {
            return this._1205943177_swf_power;
        }// end function

        private function set taskText(param1:String) : void
        {
            var _loc_2:* = this._410147758taskText;
            if (_loc_2 !== param1)
            {
                this._410147758taskText = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taskText", _loc_2, param1));
            }
            return;
        }// end function

        private function get buttonStyle() : String
        {
            return this._1770474081buttonStyle;
        }// end function

        private function get _isTaskView() : Boolean
        {
            return this._115042637_isTaskView;
        }// end function

        private function set buttonStyle(param1:String) : void
        {
            var _loc_2:* = this._1770474081buttonStyle;
            if (_loc_2 !== param1)
            {
                this._1770474081buttonStyle = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonStyle", _loc_2, param1));
            }
            return;
        }// end function

        private function _TaskTextRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = taskText;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _TaskTextRenderer_Text1.htmlText = param1;
                return;
            }// end function
            , "_TaskTextRenderer_Text1.htmlText");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return buttonStyle;
            }// end function
            , function (param1:Object) : void
            {
                finishTaskButton.styleName = param1;
                return;
            }// end function
            , "finishTaskButton.styleName");
            result[1] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _isTaskView;
            }// end function
            , function (param1:Boolean) : void
            {
                finishTaskButton.visible = param1;
                return;
            }// end function
            , "finishTaskButton.visible");
            result[2] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _isTaskView;
            }// end function
            , function (param1:Boolean) : void
            {
                finishTaskButton.includeInLayout = param1;
                return;
            }// end function
            , "finishTaskButton.includeInLayout");
            result[3] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_power;
            }// end function
            , function (param1:Object) : void
            {
                incrementMaxTaskButton.source = param1;
                return;
            }// end function
            , "incrementMaxTaskButton.source");
            result[4] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _incrementable;
            }// end function
            , function (param1:Boolean) : void
            {
                incrementMaxTaskButton.visible = param1;
                return;
            }// end function
            , "incrementMaxTaskButton.visible");
            result[5] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _incrementable;
            }// end function
            , function (param1:Boolean) : void
            {
                incrementMaxTaskButton.includeInLayout = param1;
                return;
            }// end function
            , "incrementMaxTaskButton.includeInLayout");
            result[6] = binding;
            return result;
        }// end function

        private function get _incrementable() : Boolean
        {
            return this._1417632950_incrementable;
        }// end function

        private function _TaskTextRenderer_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = taskText;
            _loc_1 = buttonStyle;
            _loc_1 = _isTaskView;
            _loc_1 = _isTaskView;
            _loc_1 = _swf_power;
            _loc_1 = _incrementable;
            _loc_1 = _incrementable;
            return;
        }// end function

        private function get taskText() : String
        {
            return this._410147758taskText;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            taskVO = null;
            if (param1)
            {
                if (param1.activityType == TaskVO.MAX_TASKS_INCREMENT_VIEW)
                {
                    _isTaskView = false;
                    _incrementable = !parentDocument.isMaxTaskIncrement();
                    taskText = parentDocument.getIncrementMaxTasksText();
                    return;
                }
                _isTaskView = true;
                _incrementable = false;
                taskVO = TaskVO(param1);
                taskText = Utils.buildTaskText(taskVO);
                buttonStyle = buttonStyles[(taskVO.tier - 1)];
            }
            return;
        }// end function

        public function __incrementMaxTaskButton_click(event:MouseEvent) : void
        {
            parentDocument.incrementMaxTasks();
            return;
        }// end function

        public function set incrementMaxTaskButton(param1:Image) : void
        {
            var _loc_2:* = this._1613080980incrementMaxTaskButton;
            if (_loc_2 !== param1)
            {
                this._1613080980incrementMaxTaskButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "incrementMaxTaskButton", _loc_2, param1));
            }
            return;
        }// end function

        private function initButton(event:Event) : void
        {
            MovieClip(Loader(_swf_power.getChildAt(0)).content).gotoAndPlay("button_add_action");
            return;
        }// end function

        private function set _isTaskView(param1:Boolean) : void
        {
            var _loc_2:* = this._115042637_isTaskView;
            if (_loc_2 !== param1)
            {
                this._115042637_isTaskView = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_isTaskView", _loc_2, param1));
            }
            return;
        }// end function

        public function get incrementMaxTaskButton() : Image
        {
            return this._1613080980incrementMaxTaskButton;
        }// end function

        public function __finishTaskButton_click(event:MouseEvent) : void
        {
            parentDocument.finishTask(taskVO);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            TaskTextRenderer._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
