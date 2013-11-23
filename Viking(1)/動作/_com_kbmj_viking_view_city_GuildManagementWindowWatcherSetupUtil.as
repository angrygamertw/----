package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_GuildManagementWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_GuildManagementWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[18] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[32]], param2);
            param4[4] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[6]], param2);
            param4[11] = new PropertyWatcher("needsRankText", {propertyChange:true}, [param3[23]], param2);
            param4[14] = new PropertyWatcher("levelUpMask", {propertyChange:true}, [param3[28]], param2);
            param4[13] = new PropertyWatcher("needsTerritoryText", {propertyChange:true}, [param3[25]], param2);
            param4[15] = new PropertyWatcher("canLevelUp", {propertyChange:true}, [param3[29]], param2);
            param4[18].updateParent(param1);
            param4[4].updateParent(param1);
            param4[11].updateParent(param1);
            param4[14].updateParent(param1);
            param4[13].updateParent(param1);
            param4[15].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildManagementWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_GuildManagementWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
