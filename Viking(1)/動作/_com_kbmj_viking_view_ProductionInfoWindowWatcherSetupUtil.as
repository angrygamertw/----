package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_ProductionInfoWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_ProductionInfoWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("playerVO", {propertyChange:true}, [param3[1], param3[2], param3[4], param3[5], param3[7], param3[8], param3[10], param3[11]], param2);
            param4[9] = new PropertyWatcher("spiritOfEarthOutput", {propertyChange:true}, [param3[8]], null);
            param4[8] = new PropertyWatcher("spiritOfEarth", {propertyChange:true}, [param3[7]], null);
            param4[3] = new PropertyWatcher("silverOutput", {propertyChange:true}, [param3[2]], null);
            param4[5] = new PropertyWatcher("spiritOfFire", {propertyChange:true}, [param3[4]], null);
            param4[2] = new PropertyWatcher("silver", {propertyChange:true}, [param3[1]], null);
            param4[6] = new PropertyWatcher("spiritOfFireOutput", {propertyChange:true}, [param3[5]], null);
            param4[12] = new PropertyWatcher("spiritOfWaterOutput", {propertyChange:true}, [param3[11]], null);
            param4[11] = new PropertyWatcher("spiritOfWater", {propertyChange:true}, [param3[10]], null);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[9]);
            param4[1].addChild(param4[8]);
            param4[1].addChild(param4[3]);
            param4[1].addChild(param4[5]);
            param4[1].addChild(param4[2]);
            param4[1].addChild(param4[6]);
            param4[1].addChild(param4[12]);
            param4[1].addChild(param4[11]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ProductionInfoWindow.watcherSetupUtil = new _com_kbmj_viking_view_ProductionInfoWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
