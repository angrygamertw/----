﻿package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_MiniMapWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_MiniMapWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("miniMap", {propertyChange:true}, [param3[0]], param2);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MiniMapWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_MiniMapWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
