package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_UpgradeItemWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_UpgradeItemWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[14] = new PropertyWatcher("_swf_cancel_button", {propertyChange:true}, [param3[11]], param2);
            param4[6] = new PropertyWatcher("_upgradeItem", {propertyChange:true}, [param3[6]], param2);
            param4[7] = new PropertyWatcher("nameLabel", null, [param3[6]], null);
            param4[9] = new PropertyWatcher("_upgradedMaster", {propertyChange:true}, [param3[8]], param2);
            param4[10] = new PropertyWatcher("nameLabel", null, [param3[8]], null);
            param4[1] = new PropertyWatcher("_materialItems", {propertyChange:true}, [param3[1]], param2);
            param4[12] = new PropertyWatcher("_materialItemNameLabel", {propertyChange:true}, [param3[9]], param2);
            param4[13] = new PropertyWatcher("_swf_ok_button", {propertyChange:true}, [param3[10]], param2);
            param4[14].updateParent(param1);
            param4[6].updateParent(param1);
            param4[6].addChild(param4[7]);
            param4[9].updateParent(param1);
            param4[9].addChild(param4[10]);
            param4[1].updateParent(param1);
            param4[12].updateParent(param1);
            param4[13].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UpgradeItemWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_UpgradeItemWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
