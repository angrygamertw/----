﻿package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ProductionConditionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ProductionConditionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("buildingLabel", {propertyChange:true}, [param3[2]], param2);
            param4[7] = new PropertyWatcher("requirements", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("production", {propertyChange:true}, [param3[0], param3[8], param3[9]], param2);
            param4[13] = new PropertyWatcher("isCrystal", null, [param3[9]], null);
            param4[1] = new PropertyWatcher("masterVO", {propertyChange:true}, [param3[0]], null);
            param4[2] = new PropertyWatcher("product", {propertyChange:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("nameLabel", null, [param3[0]], null);
            param4[12] = new PropertyWatcher("successRate", {propertyChange:true}, [param3[8]], null);
            param4[6] = new PropertyWatcher("buildingLabelColor", {propertyChange:true}, [param3[3]], param2);
            param4[5].updateParent(param1);
            param4[7].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[13]);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[2]);
            param4[2].addChild(param4[3]);
            param4[0].addChild(param4[12]);
            param4[6].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ProductionConditionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ProductionConditionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
