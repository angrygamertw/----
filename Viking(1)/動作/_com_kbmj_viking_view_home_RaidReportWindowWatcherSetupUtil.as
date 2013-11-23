package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RaidReportWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RaidReportWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[23] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[21]], param2);
            param4[19] = new PropertyWatcher("_guildMemberRaidReportList", {propertyChange:true}, [param3[16]], param2);
            param4[8] = new PropertyWatcher("_raidReportList", {propertyChange:true}, [param3[4]], param2);
            param4[3] = new PropertyWatcher("_attackLose", {propertyChange:true}, [param3[1]], param2);
            param4[2] = new PropertyWatcher("_attackWin", {propertyChange:true}, [param3[1]], param2);
            param4[6] = new PropertyWatcher("_defenseLose", {propertyChange:true}, [param3[2]], param2);
            param4[5] = new PropertyWatcher("_defenseWin", {propertyChange:true}, [param3[2]], param2);
            param4[14] = new PropertyWatcher("_colonyReportList", {propertyChange:true}, [param3[10]], param2);
            param4[11] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[19], param3[7], param3[13]], param2);
            param4[23].updateParent(param1);
            param4[19].updateParent(param1);
            param4[8].updateParent(param1);
            param4[3].updateParent(param1);
            param4[2].updateParent(param1);
            param4[6].updateParent(param1);
            param4[5].updateParent(param1);
            param4[14].updateParent(param1);
            param4[11].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RaidReportWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_RaidReportWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
