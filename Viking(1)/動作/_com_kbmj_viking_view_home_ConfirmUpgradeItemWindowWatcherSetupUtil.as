﻿package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ConfirmUpgradeItemWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ConfirmUpgradeItemWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("_upgradeMaterialName", {propertyChange:true}, [param3[1]], param2);
            param4[7] = new PropertyWatcher("_swf_cancel_button", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[6] = new PropertyWatcher("_swf_ok_button", {propertyChange:true}, [param3[3]], param2);
            param4[5] = new PropertyWatcher("_upgradedMasterName", {propertyChange:true}, [param3[2]], param2);
            param4[4] = new PropertyWatcher("_upgradeItemName", {propertyChange:true}, [param3[2]], param2);
            param4[2].updateParent(param1);
            param4[7].updateParent(param1);
            param4[0].updateParent(param1);
            param4[6].updateParent(param1);
            param4[5].updateParent(param1);
            param4[4].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ConfirmUpgradeItemWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ConfirmUpgradeItemWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
