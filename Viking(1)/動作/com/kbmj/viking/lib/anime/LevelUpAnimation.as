package com.kbmj.viking.lib.anime
{
    import flash.display.*;
    import mx.core.*;

    public class LevelUpAnimation extends StartTacticsAnimation
    {
        private var _loader:Loader;
        private var _ui:UIComponent;
        private var _listenerBool:Boolean = true;

        public function LevelUpAnimation()
        {
            _loader = new Loader();
            _ui = new UIComponent();
            return;
        }// end function

        public function get loader() : Loader
        {
            return _loader;
        }// end function

        public function set loader(param1:Loader) : void
        {
            _loader = param1;
            return;
        }// end function

        public function set ui(param1:UIComponent) : void
        {
            _ui = param1;
            return;
        }// end function

        public function get ui() : UIComponent
        {
            return _ui;
        }// end function

        override public function load() : void
        {
            trace("levelupnow");
            enqueueAnimation("LevelUp", "/swf/animation/lvup.swf");
            loadAnimations();
            return;
        }// end function

        public function set listenerBool(param1:Boolean) : void
        {
            _listenerBool = param1;
            return;
        }// end function

        public function get listenerBool() : Boolean
        {
            return _listenerBool;
        }// end function

    }
}
