package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_DegradationQuantityWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_DegradationQuantityWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("quantityLenderer", {propertyChange:true}, [param3[2]], param2);
            param4[6] = new PropertyWatcher("resourceQuantityLabel", {propertyChange:true}, [param3[3]], param2);
            param4[10] = new PropertyWatcher("maxQuantity", {propertyChange:true}, [param3[7]], param2);
            param4[4] = new PropertyWatcher("requirements", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("production", {propertyChange:true}, [param3[0], param3[4], param3[5]], param2);
            param4[8] = new PropertyWatcher("isCrystal", null, [param3[5]], null);
            param4[1] = new PropertyWatcher("masterVO", {propertyChange:true}, [param3[0]], null);
            param4[2] = new PropertyWatcher("product", {propertyChange:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("nameLabel", null, [param3[0]], null);
            param4[7] = new PropertyWatcher("successRate", {propertyChange:true}, [param3[4]], null);
            param4[9] = new PropertyWatcher("_showStepper", {propertyChange:true}, [param3[6], param3[8]], param2);
            param4[5].updateParent(param1);
            param4[6].updateParent(param1);
            param4[10].updateParent(param1);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[8]);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[2]);
            param4[2].addChild(param4[3]);
            param4[0].addChild(param4[7]);
            param4[9].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            DegradationQuantityWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_DegradationQuantityWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
