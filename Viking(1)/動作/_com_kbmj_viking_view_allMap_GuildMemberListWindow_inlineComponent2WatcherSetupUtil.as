﻿package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_GuildMemberListWindow_inlineComponent2WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_GuildMemberListWindow_inlineComponent2WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("playerName", null, [param3[0]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildMemberListWindow_inlineComponent2.watcherSetupUtil = new _com_kbmj_viking_view_allMap_GuildMemberListWindow_inlineComponent2WatcherSetupUtil;
            return;
        }// end function

    }
}
