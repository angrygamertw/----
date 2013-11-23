package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_MatchBattleDefenceReportWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_MatchBattleDefenceReportWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[6] = new PropertyWatcher("_swf_button", {propertyChange:true}, [param3[4]], param2);
            param4[5] = new PropertyWatcher("_point", {propertyChange:true}, [param3[3]], param2);
            param4[3] = new PropertyWatcher("_winCount", {propertyChange:true}, [param3[2]], param2);
            param4[0].updateParent(param1);
            param4[6].updateParent(param1);
            param4[5].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MatchBattleDefenceReport.watcherSetupUtil = new _com_kbmj_viking_view_home_MatchBattleDefenceReportWatcherSetupUtil;
            return;
        }// end function

    }
}
