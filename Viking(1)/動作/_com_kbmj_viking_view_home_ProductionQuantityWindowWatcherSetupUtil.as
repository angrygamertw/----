package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ProductionQuantityWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ProductionQuantityWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[18] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[16]], param2);
            param4[4] = new PropertyWatcher("buildingLabel", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("production", {propertyChange:true}, [param3[0], param3[2], param3[10], param3[11]], param2);
            param4[5] = new PropertyWatcher("isCrystal", null, [param3[2], param3[11]], null);
            param4[1] = new PropertyWatcher("masterVO", {propertyChange:true}, [param3[0]], null);
            param4[2] = new PropertyWatcher("product", {propertyChange:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("nameLabel", null, [param3[0]], null);
            param4[14] = new PropertyWatcher("successRate", {propertyChange:true}, [param3[10]], null);
            param4[6] = new PropertyWatcher("requirements", {propertyChange:true}, [param3[3]], param2);
            param4[17] = new PropertyWatcher("maxQuantity", {propertyChange:true}, [param3[14]], param2);
            param4[11] = new PropertyWatcher("quantityLenderer", {propertyChange:true}, [param3[8]], param2);
            param4[12] = new PropertyWatcher("resourceQuantityLabel", {propertyChange:true}, [param3[9]], param2);
            param4[16] = new PropertyWatcher("_showStepper", {propertyChange:true}, [param3[13], param3[15]], param2);
            param4[18].updateParent(param1);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[5]);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[2]);
            param4[2].addChild(param4[3]);
            param4[0].addChild(param4[14]);
            param4[6].updateParent(param1);
            param4[17].updateParent(param1);
            param4[11].updateParent(param1);
            param4[12].updateParent(param1);
            param4[16].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ProductionQuantityWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ProductionQuantityWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
