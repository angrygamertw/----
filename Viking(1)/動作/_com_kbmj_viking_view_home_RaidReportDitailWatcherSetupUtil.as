package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RaidReportDitailWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RaidReportDitailWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[14] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[9]], param2);
            param4[2] = new PropertyWatcher("_report", {propertyChange:true}, [param3[1], param3[2], param3[3], param3[4], param3[7], param3[8]], param2);
            param4[10] = new PropertyWatcher("_result", {propertyChange:true}, [param3[5]], param2);
            param4[3] = new PropertyWatcher("_playerVO", {propertyChange:true}, [param3[1]], param2);
            param4[11] = new PropertyWatcher("_resultDitail", {propertyChange:true}, [param3[6]], param2);
            param4[14].updateParent(param1);
            param4[2].updateParent(param1);
            param4[10].updateParent(param1);
            param4[3].updateParent(param1);
            param4[11].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RaidReportDitail.watcherSetupUtil = new _com_kbmj_viking_view_home_RaidReportDitailWatcherSetupUtil;
            return;
        }// end function

    }
}
