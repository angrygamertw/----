﻿package 
{
    import com.kbmj.viking.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_TacticsWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_TacticsWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("_swf_button_fast", {propertyChange:true}, [param3[1]], param2);
            param4[2] = new PropertyWatcher("_swf_button_sound", {propertyChange:true}, [param3[2]], param2);
            param4[0] = new PropertyWatcher("mapImageSource", {propertyChange:true}, [param3[0]], param2);
            param4[1].updateParent(param1);
            param4[2].updateParent(param1);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            Tactics.watcherSetupUtil = new _com_kbmj_viking_TacticsWatcherSetupUtil;
            return;
        }// end function

    }
}
