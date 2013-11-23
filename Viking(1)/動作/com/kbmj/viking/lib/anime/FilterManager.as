package com.kbmj.viking.lib.anime
{
    import flash.filters.*;

    public class FilterManager extends Object
    {
        private var glowFilterArray:Array;

        public function FilterManager()
        {
            glowFilterArray = new Array();
            addGlowFilter(2, 2, 1, 16711680, "enemy");
            addGlowFilter(2, 2, 1, 16776960, "current");
            addGlowFilter(0, 0, 0, 0, "nothing");
            addGlowFilter(2, 2, 1, 255, "myteam");
            addGlowFilter(2, 2, 1, 16777215, "guildAlly");
            return;
        }// end function

        public function getGlowFilter(param1:String) : GlowFilter
        {
            return glowFilterArray[param1];
        }// end function

        private function addGlowFilter(param1:Number, param2:Number, param3:Number, param4:int, param5:String) : void
        {
            var _loc_6:* = new GlowFilter();
            new GlowFilter().blurX = param1;
            _loc_6.blurY = param2;
            _loc_6.alpha = param3;
            _loc_6.color = param4;
            glowFilterArray[param5] = _loc_6;
            return;
        }// end function

    }
}
