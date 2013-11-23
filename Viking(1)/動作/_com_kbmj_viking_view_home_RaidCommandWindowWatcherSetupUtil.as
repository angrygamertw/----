package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RaidCommandWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RaidCommandWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_player", {propertyChange:true}, [param3[0], param3[1], param3[3], param3[4]], param2);
            param4[7] = new PropertyWatcher("raidLimitationExpired", {propertyChange:true}, [param3[3]], null);
            param4[9] = new PropertyWatcher("raidLimitationExpiredAtLabel", {propertyChange:true}, [param3[4]], null);
            param4[3] = new PropertyWatcher("raidProtectionExpiredAtLabel", {propertyChange:true}, [param3[1]], null);
            param4[1] = new PropertyWatcher("raidProtectionExpired", {propertyChange:true}, [param3[0]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[7]);
            param4[0].addChild(param4[9]);
            param4[0].addChild(param4[3]);
            param4[0].addChild(param4[1]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RaidCommandWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_RaidCommandWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
