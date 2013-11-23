package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_GuildApprovalWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_GuildApprovalWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[19] = new PropertyWatcher("_swf_reserve", {propertyChange:true}, [param3[25]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[7] = new PropertyWatcher("_applicationPlayerVO", {propertyChange:true}, [param3[18], param3[20], param3[22], param3[11], param3[14]], param2);
            param4[14] = new PropertyWatcher("unitCount", null, [param3[20]], null);
            param4[8] = new PropertyWatcher("playerName", null, [param3[11], param3[14]], null);
            param4[12] = new PropertyWatcher("propertiesCount", null, [param3[18]], null);
            param4[16] = new PropertyWatcher("maxUnitLevel", null, [param3[22]], null);
            param4[21] = new PropertyWatcher("_swf_refuse", {propertyChange:true}, [param3[27]], param2);
            param4[20] = new PropertyWatcher("_swf_approve", {propertyChange:true}, [param3[26]], param2);
            param4[10] = new PropertyWatcher("_swf_rank", {propertyChange:true}, [param3[16]], param2);
            param4[5].updateParent(param1);
            param4[19].updateParent(param1);
            param4[0].updateParent(param1);
            param4[7].updateParent(param1);
            param4[7].addChild(param4[14]);
            param4[7].addChild(param4[8]);
            param4[7].addChild(param4[12]);
            param4[7].addChild(param4[16]);
            param4[21].updateParent(param1);
            param4[20].updateParent(param1);
            param4[10].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildApprovalWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_GuildApprovalWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
